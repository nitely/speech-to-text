## Port of github.com/streamer45/silero-vad-go

import std/[os, times]

when defined(useFuthark) or defined(useFutharkForSilerovad):
  import futhark
  importc:
    outputPath currentSourcePath.parentDir / "onnxruntime_c_api_generated.nim"
    path "./onnxruntime"
    "onnxruntime_c_api.h"
else:
  {.push dynlib: "libonnxruntime.so".}
  include onnxruntime_c_api_generated

type
  DetectorConfig = ref object
    modelPath: string
    sampleRate: int32
    threshold: float32
    minSilenceDurationMs: int32
    speechPadMs: int32
    logLevel: OrtLoggingLevel

proc newDetectorConfig(
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
  loggerName = "vad"

type
  Detector = object
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

proc `=destroy`(dtr: var Detector) =
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

proc initDetector(cfg: DetectorConfig): Detector =
  let api = OrtGetApiBase().GetApi(ORT_API_VERSION)
  doAssert api != nil
  var status: OrtStatusPtr = nil
  defer: api.ReleaseStatus(status)
  var env: ptr OrtEnv = nil
  status = api.CreateEnv(cfg.logLevel, loggerName.cstring, addr env)
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
  Segment = object
    startAt, endAt: float64

proc infer(dtr: Detector, pcm: openArray[float32]): float32 =
  discard

proc detect(dtr: var Detector, pcm: seq[float32]): seq[Segment] =
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

proc reset(dtr: var Detector) =
  dtr.currSample = 0
  dtr.triggered = false
  dtr.tempEnd = 0
  for i in 0 .. dtr.state.len-1:
    dtr.state[i] = 0
  for i in 0 .. dtr.ctx.len-1:
    dtr.ctx[i] = 0

proc setThreshold(dtr: var Detector, val: float32) =
  dtr.cfg.threshold = val

let cfg = newDetectorConfig(
  modelPath = "./src/models/silero_vad.onnx",
  sampleRate = 16000,
  threshold = 0.5,
  minSilenceDurationMs = 50,
  speechPadMs = 50,
  logLevel = ORT_LOGGING_LEVEL_WARNING
)
let detector = initDetector(cfg)

echo "ok"



