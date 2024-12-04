
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
  var textSegments = newSeq[string]()
  for segment in segments:
    let startIndex = toInt(segment.startAt * 16000'f64)
    let endIndex = toInt(segment.endAt * 16000'f64)
    textSegments.add samples[startIndex .. endIndex-1].toText
  doAssert textSegments == @[
    " And so, my fellow Americans!",
    " Ask not!",
    " What your country can do for you!",
    " Ask what you can do for your country."
  ], $textSegments

#test "Test jfk.wav":
#  # the "ask not" is not found with the default settings
#  let cfg = newDetectorConfig(
#    modelPath = "./src/models/silero_vad.onnx",
#    sampleRate = 16000,
#    threshold = 0.5,
#    minSilenceDurationMs = 300,
#    speechPadMs = 250,
#    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
#  )
#  var dtr = newDetector(cfg)
#  let samples = readWav("./samples/jfk3.wav")
#  let segments = dtr.detect(samples)
#  var textSegments = newSeq[string]()
#  for segment in segments:
#    let startIndex = toInt(segment.startAt * 16000'f64)
#    let endIndex = toInt(segment.endAt * 16000'f64)
#    echo samples[startIndex .. endIndex-1].toText
#
#  #doAssert textSegments == @[
#  #  " And so, my fellow Americans!",
#  #  " Ask not!",
#  #  " What your country can do for you!",
#  #  " Ask what you can do for your country."
#  #], $textSegments

