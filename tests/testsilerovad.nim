import std/strbasics
import ../src/silerovad

template test(desc: string, body: untyped): untyped =
  (proc() =
    echo desc
    body)()

proc readWav(s: string): seq[float32] =
  ## Assumes 16kHz samplerate
  const headerSize = 44
  var t = readFile(s)
  doAssert t.len >= headerSize
  setSlice(t, headerSize .. t.len-1)
  let numSamples = t.len div 2
  result = newSeq[float32](numSamples)
  for i in 0 .. numSamples-1:
    var sample = 0'u16
    sample += t[i*2].uint16
    sample += t[i*2+1].uint16 shl 8
    result[i] = float32(sample) / float32(high(int16))

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
      Segment(startAt: 0.066, endAt: 0.254),
      Segment(startAt: 0.514, endAt: 0.67),
      Segment(startAt: 2.21, endAt: 3.326),
      Segment(startAt: 3.586, endAt: 3.71),
      Segment(startAt: 3.81, endAt: 4.126),
      Segment(startAt: 4.482, endAt: 5.566),
      Segment(startAt: 5.73, endAt: 6.462),
      Segment(startAt: 6.53, endAt: 8.35),
      Segment(startAt: 8.61, endAt: 10.718),
      Segment(startAt: 10.882, endAt: 0.0)
    ]
