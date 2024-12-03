import std/streams
import ../src/silerovad

template test(desc: string, body: untyped): untyped =
  (proc() =
    echo desc
    body)()

proc readWav(s: string): seq[float32] =
  ## Assumes 16kHz samplerate
  var fs = newFileStream(s, fmRead)
  defer: close(fs)
  var buffer = ""
  var chunkSize: uint32
  fs.readStr(4, buffer)
  doAssert buffer == "RIFF"
  fs.readStr(4, buffer)
  fs.readStr(4, buffer)
  doAssert buffer == "WAVE"
  while not fs.atEnd():
    fs.readStr(4, buffer)
    chunkSize = fs.readUint32()
    if buffer == "data":
      #echo "found data"
      break
    fs.setPosition(fs.getPosition() + int64(chunkSize))
    if chunkSize mod 2 != 0:
      discard fs.readChar()
  doAssert not fs.atEnd()
  result = newSeq[float32]()
  while not fs.atEnd():
    result.add float32(fs.readInt16()) / float32(int16.high)

test "Test jfk.wav":
  let cfg = newDetectorConfig(
    modelPath = "./src/models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 100,
    speechPadMs = 30,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = initDetector(cfg)
  let samples = readWav("./samples/jfk.wav")
  doAssert dtr.detect(samples) ==
    @[
      Segment(startAt: 0.29, endAt: 2.238),
      Segment(startAt: 3.586, endAt: 3.774),
      Segment(startAt: 4.002, endAt: 4.382),
      Segment(startAt: 5.378, endAt: 7.678),
      Segment(startAt: 8.162, endAt: 10.654)
    ]
