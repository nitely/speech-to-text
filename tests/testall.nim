
import ../src/silerovad
import ../src/speechtotext
import ./utils

#when false:
test "Test jfk.wav":
  let samples = readWav("./samples/jfk.wav")
  # the "ask not" is not found with the default settings
  let cfg = newDetectorConfig(
    modelPath = "./models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 300,
    speechPadMs = 250,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = newDetector(cfg)
  let segments = dtr.detect(samples)
  let stt = initSpeechToText("./models/ggml-base.en-q5_0.bin")
  let sttParams = initSttParams(threads = 2, audioCtx = 768)
  var textSegments = newSeq[string]()
  for segment in segments:
    let startIndex = toInt(segment.startAt * 16000'f64)
    let endIndex = toInt(segment.endAt * 16000'f64)
    textSegments.add stt.toText(samples[startIndex .. endIndex-1], sttParams)
  doAssert textSegments == @[
    " And so, my fellow Americans!",
    " Ask not.",
    " What your country can do for you.",
    " Ask what you can do for your country."
  ], $textSegments

when false:
#test "Test japanese wav":
  let samples = readWav("./samples/testja2.wav")
  let cfg = newDetectorConfig(
    modelPath = "./models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 200,
    speechPadMs = 150,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = newDetector(cfg)
  let segments = dtr.detect(samples)
  let stt = initSpeechToText("./models/ggml-medium-q5_0.bin")
  let sttParams = initSttParams(
    sttLangJa,
    translate = true,
    threads = 2,
    audioCtx = 768
  )
  #echo stt.toText(samples, sttParams)
  for segment in segments:
    let startIndex = toInt(segment.startAt * 16000'f64)
    let endIndex = toInt(segment.endAt * 16000'f64)
    echo stt.toText(samples[startIndex .. endIndex-1], sttParams)
