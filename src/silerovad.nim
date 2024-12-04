## Port of github.com/streamer45/silero-vad-go
## Assumes 16kHz samplerate
## Assumes mono audio
##
## Use this command for wav conversion:
## ```
## ffmpeg -i audio_src.wav -ar 16000 -ac 1 audio_dest.wav
## ```

when defined(useFuthark) or defined(useFutharkForSilerovad):
  import std/os
  import pkg/futhark
  importc:
    outputPath currentSourcePath.parentDir / "onnxruntime_c_api_generated.nim"
    path "./onnxruntime"
    "onnxruntime_c_api.h"
else:
  {.push dynlib: "libonnxruntime.so".}
  import ./onnxruntime_c_api_generated

export OrtLoggingLevel

type
  DetectorConfigObj = object
    modelPath: string
    sampleRate: int32
    threshold: float32
    minSilenceDurationMs: int32
    speechPadMs: int32
    logLevel: OrtLoggingLevel
  DetectorConfig* = ref DetectorConfigObj

proc `=sink`(dest: var DetectorConfigObj; src: DetectorConfigObj) {.error.}
proc `=dup`(src: DetectorConfigObj): DetectorConfigObj {.error.}
proc `=copy`(dest: var DetectorConfigObj; src: DetectorConfigObj) {.error.}
proc `=wasMoved`(dest: var DetectorConfigObj) {.error.}

proc newDetectorConfig*(
  modelPath: string,
  sampleRate: int32,
  threshold: float32,
  minSilenceDurationMs: int32,
  speechPadMs: int32,
  logLevel: OrtLoggingLevel
): DetectorConfig =
  doAssert modelPath.len > 0
  doAssert sampleRate == 16000 #or sampleRate == 8000
  doAssert threshold in 0'f32 .. 1'f32
  doAssert minSilenceDurationMs >= 0
  doAssert speechPadMs >= 0
  DetectorConfig(
    modelPath: modelPath,
    sampleRate: sampleRate,
    threshold: threshold,
    minSilenceDurationMs: minSilenceDurationMs,
    speechPadMs: speechPadMs,
    logLevel: logLevel
  )

const
  csLoggerName = "vad"
  csInput = "input"
  csState = "state"
  csSr = "sr"
  csOutput = "output"
  csStateN = "stateN"

type
  DetectorObj = object
    api: ptr OrtApi
    env: ptr OrtEnv
    sessionOpts: ptr OrtSessionOptions
    session: ptr OrtSession
    memoryInfo: ptr OrtMemoryInfo
    cfg: DetectorConfig
    state: array[256, float32]
    ctx: array[64, float32]
    currSample: int32
    triggered: bool
    tempEnd: int32
  Detector* = ref DetectorObj

proc `=sink`(dest: var DetectorObj; src: DetectorObj) {.error.}
proc `=dup`(src: DetectorObj): DetectorObj {.error.}
proc `=copy`(dest: var DetectorObj; src: DetectorObj) {.error.}
proc `=wasMoved`(dest: var DetectorObj) {.error.}

proc `=destroy`(dtr: DetectorObj) =
  #echo "=destroy"
  if dtr.memoryInfo != nil:
    dtr.api.ReleaseMemoryInfo(dtr.memoryInfo)
  if dtr.session != nil:
    dtr.api.ReleaseSession(dtr.session)
  if dtr.sessionOpts != nil:
    dtr.api.ReleaseSessionOptions(dtr.sessionOpts)
  if dtr.env != nil:
    dtr.api.ReleaseEnv(dtr.env)
  if dtr.cfg != nil:
    `=destroy`(dtr.cfg)

proc newDetector*(cfg: DetectorConfig): Detector =
  let api = OrtGetApiBase().GetApi(ORT_API_VERSION)
  doAssert api != nil
  var status: OrtStatusPtr = nil
  defer: api.ReleaseStatus(status)
  var env: ptr OrtEnv = nil
  status = api.CreateEnv(cfg.logLevel, csLoggerName, addr env)
  doAssert status == nil
  var sessionOpts: ptr OrtSessionOptions = nil
  status = api.CreateSessionOptions(addr sessionOpts)
  doAssert status == nil
  status = api.SetIntraOpNumThreads(sessionOpts, 1)
  doAssert status == nil
  status = api.SetInterOpNumThreads(sessionOpts, 1)
  doAssert status == nil
  status = api.SetSessionGraphOptimizationLevel(sessionOpts, ORT_ENABLE_ALL)
  doAssert status == nil
  var session: ptr OrtSession = nil
  status = api.CreateSession(env, cfg.modelPath.cstring, sessionOpts, addr session)
  doAssert status == nil
  var memoryInfo: ptr OrtMemoryInfo = nil
  status = api.CreateCpuMemoryInfo(OrtArenaAllocator, OrtMemTypeDefault, addr memoryInfo)
  doAssert status == nil
  result = Detector(
    api: api,
    env: env,
    sessionOpts: sessionOpts,
    session: session,
    memoryInfo: memoryInfo,
    cfg: cfg,
    state: default(array[256, float32]),
    ctx: default(array[64, float32]),
    currSample: 0'i32,
    triggered: false,
    tempEnd: 0'i32
  )

type
  Segment* = object
    startAt*, endAt*: float64

proc infer(dtr: var Detector, pcm2: openArray[float32]): float32 =
  var pcm = newSeq[float32]()
  for x in pcm2:
    pcm.add x
  if dtr.currSample > 0:
    pcm.setLen 0
    for i in 0 .. dtr.ctx.len-1:
      pcm.add dtr.ctx[i]
    for i in 0 .. pcm2.len-1:
      pcm.add pcm2[i]
  doAssert pcm2.len >= dtr.ctx.len
  for i in 0 .. dtr.ctx.len-1:
    dtr.ctx[i] = pcm2[pcm2.len-dtr.ctx.len+i]
  var pcmValue: ptr OrtValue = nil
  defer: dtr.api.ReleaseValue(pcmValue)
  let pcmInputDims = [1'i64, pcm.len]
  var status: OrtStatusPtr = nil
  defer: dtr.api.ReleaseStatus(status)
  status = dtr.api.CreateTensorWithDataAsOrtValue(
    dtr.memoryInfo, addr pcm[0], csize_t(pcm.len*4), addr pcmInputDims[0], csize_t(pcmInputDims.len), ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT, addr pcmValue
  )
  doAssert status == nil
  var stateValue: ptr OrtValue = nil
  defer: dtr.api.ReleaseValue(stateValue)
  const stateNodeInputDims = [2'i64, 1, 128]
  status = dtr.api.CreateTensorWithDataAsOrtValue(
    dtr.memoryInfo, addr dtr.state[0], csize_t(dtr.state.len*4), addr stateNodeInputDims[0], csize_t(stateNodeInputDims.len), ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT, addr stateValue
  )
  doAssert status == nil
  var rateValue: ptr OrtValue = nil
  defer: dtr.api.ReleaseValue(rateValue)
  const rateInputDims = [1'i64]
  let rate = [dtr.cfg.sampleRate.int64]
  status = dtr.api.CreateTensorWithDataAsOrtValue(
    dtr.memoryInfo, addr rate[0], csize_t(8), addr rateInputDims[0], csize_t(rateInputDims.len), ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64, addr rateValue
  )
  doAssert status == nil
  let inputs = [pcmValue, stateValue, rateValue]
  let outputs = default(array[2, ptr OrtValue])
  defer: dtr.api.ReleaseValue(outputs[0])
  defer: dtr.api.ReleaseValue(outputs[1])
  const inputNames = [csInput.cstring, csState, csSr]
  const outputNames = [csOutput.cstring, csStateN]
  status = dtr.api.Run(
    dtr.session, nil, addr inputNames[0], addr inputs[0], csize_t(inputNames.len), addr outputNames[0], csize_t(outputNames.len), addr outputs[0]
  )
  doAssert status == nil
  let prob: pointer = nil
  let stateN: pointer = nil
  status = dtr.api.GetTensorMutableData(outputs[0], addr prob)
  doAssert status == nil
  status = dtr.api.GetTensorMutableData(outputs[1], addr stateN)
  doAssert status == nil
  copyMem(addr dtr.state[0], stateN, dtr.state.len*4)
  return cast[ptr float32](prob)[]

proc detect*(dtr: var Detector, pcm: seq[float32]): seq[Segment] =
  let windowSize = 512'i32
  doAssert pcm.len >= windowSize, "not enough samples"
  let minSilenceSamples = dtr.cfg.minSilenceDurationMs * dtr.cfg.sampleRate div 1000
  let speechPadSamples = dtr.cfg.speechPadMs * dtr.cfg.sampleRate div 1000
  result = newSeq[Segment]()
  let L = len(pcm)-windowSize
  var i = 0
  while i < L:
    let speechProb = dtr.infer(toOpenArray(pcm, i, i+windowSize-1))
    dtr.currSample += windowSize
    if speechProb >= dtr.cfg.threshold and dtr.tempEnd != 0:
      dtr.tempEnd = 0
    if speechProb >= dtr.cfg.threshold and not dtr.triggered:
      dtr.triggered = true
      var speechStartAt = float64(dtr.currSample-windowSize-speechPadSamples) / float64(dtr.cfg.sampleRate)
      if speechStartAt < 0:
        speechStartAt = 0
      result.add Segment(startAt: speechStartAt)
    if speechProb < (dtr.cfg.threshold-0.15) and dtr.triggered:
      if dtr.tempEnd == 0:
        dtr.tempEnd = dtr.currSample
      if dtr.currSample-dtr.tempEnd >= minSilenceSamples:
        let speechEndAt = float64(dtr.tempEnd+speechPadSamples) / float64(dtr.cfg.sampleRate)
        dtr.tempEnd = 0
        dtr.triggered = false
        doAssert result.len > 0
        result[^1].endAt = speechEndAt
    i += windowSize

proc reset*(dtr: var Detector) =
  dtr.currSample = 0
  dtr.triggered = false
  dtr.tempEnd = 0
  for i in 0 .. dtr.state.len-1:
    dtr.state[i] = 0
  for i in 0 .. dtr.ctx.len-1:
    dtr.ctx[i] = 0

when isMainModule:
  func toFloat32(x: array[4, uint8]): float32 =
    result = cast[float32](x)

  proc readSamples(s: string): seq[float32] =
    result = newSeq[float32]()
    let t = readFile(s)
    var i = 0
    while i < t.len:
      result.add [t[i+0].uint8, t[i+1].uint8, t[i+2].uint8, t[i+3].uint8].toFloat32
      i += 4

  let cfg = newDetectorConfig(
    modelPath = "./src/models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 0,
    speechPadMs = 0,
    logLevel = ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = newDetector(cfg)
  block:
    let samples = readSamples("./samples/samples.pcm")
    doAssert dtr.detect(samples) ==
      @[
        Segment(startAt: 1.056, endAt: 1.632),
        Segment(startAt: 2.88, endAt: 3.232),
        Segment(startAt: 4.448, endAt: 0.0)
      ]
  dtr.reset()
  block:
    let samples2 = readSamples("./samples/samples2.pcm")
    doAssert dtr.detect(samples2) ==
      @[
        Segment(startAt: 3.008, endAt: 6.24),
        Segment(startAt: 7.072, endAt: 8.16)
      ]
  dtr.reset()
  block:
    cfg.speechPadMs = 10
    let samples = readSamples("./samples/samples.pcm")
    doAssert dtr.detect(samples) ==
      @[
        Segment(startAt: 1.046, endAt: 1.642),
        Segment(startAt: 2.87, endAt: 3.242),
        Segment(startAt: 4.438, endAt: 0.0)
      ]

  echo "ok"



