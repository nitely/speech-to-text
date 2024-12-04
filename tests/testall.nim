
import ../src/silerovad
import ../src/speechtotext
import ./utils

test "Test jfk.wav":
  # the "ask not" is not found with the default settings
  let cfg = newDetectorConfig(
    modelPath = "./src/models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 300,
    speechPadMs = 250,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = newDetector(cfg)
  let samples = readWav("./samples/jfk.wav")
  let segments = dtr.detect(samples)
  let stt = initSpeechToText("./src/models/ggml-base.en-q5_0.bin")
  var textSegments = newSeq[string]()
  for segment in segments:
    let startIndex = toInt(segment.startAt * 16000'f64)
    let endIndex = toInt(segment.endAt * 16000'f64)
    textSegments.add stt.toText(samples[startIndex .. endIndex-1])
  doAssert textSegments == @[
    " And so, my fellow Americans!",
    " Ask not!",
    " What your country can do for you!",
    " Ask what you can do for your country."
  ], $textSegments

#test "Test jfk.wav":
when false:
  # the "ask not" is not found with the default settings
  let cfg = newDetectorConfig(
    modelPath = "./src/models/silero_vad.onnx",
    sampleRate = 16000,
    threshold = 0.5,
    minSilenceDurationMs = 100,
    speechPadMs = 30,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  var dtr = newDetector(cfg)
  let samples = readWav("./samples/testja.wav")
  let segments = dtr.detect(samples)
  let stt = initSpeechToText("./src/models/ggml-medium-q5_0.bin")
  var prompt = ""
  var textSegments = newSeq[string]()
  for segment in segments:
    let startIndex = toInt(segment.startAt * 16000'f64)
    let endIndex = toInt(segment.endAt * 16000'f64)
    let text = stt.toText(samples[startIndex .. endIndex-1])
    #prompt.add text
    echo text
  #doAssert textSegments == @[
  #  " And so, my fellow Americans!",
  #  " Ask not!",
  #  " What your country can do for you!",
  #  " Ask what you can do for your country."
  #], $textSegments
