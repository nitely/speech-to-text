
import pkg/silerovad
import ./miniaudio
import ./speechtotext
import ./utils

const sampleRate = 16000

proc main =
  var buff = newSeq[float32]()
  var rec = initRecorder()
  var dtr = newDetector newDetectorConfig(
    modelPath = "./models/silero_vad.onnx",
    sampleRate = sampleRate,
    threshold = 0.5,
    minSilenceDurationMs = 100,
    speechPadMs = 30,
    logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
  )
  let stt = initSpeechToText("./models/ggml-base-q5_1.bin")
  #let stt = initSpeechToText("./models/ggml-base.en-q5_0.bin")
  #let stt = initSpeechToText("./models/ggml-medium-q5_0.bin")
  #let stt = initSpeechToText("./models/ggml-kotoba-whisper-bilingual-v1.0-q5_0.bin")
  let sttParams = initSttParams(
    #sttLangJa,
    #sttLangEs,
    #translate = true,
    threads = 2,
    audioCtx = 768
  )
  with rec:
    while true:
      doAssert buff.len < 16000 * 60
      listen(rec, buff)
      let segments = dtr.detect(buff)
      if segments.len == 0:
        buff.setLen 0
        continue
      for i in 0 .. segments.len-1:
        if i == segments.len-1 and segments[i].endAt == 0:
          break
        let startIndex = toInt(segments[i].startAt * 16000'f64)
        let endIndex = toInt(segments[i].endAt * 16000'f64)
        echo stt.toText(buff[startIndex .. endIndex-1], sttParams)
      var endAt = if segments[^1].endAt > 0:
        segments[^1].endAt
      else:
        segments[^1].startAt
      let endIndex = toInt(endAt * 16000'f64) + int(segments[^1].endAt > 0)
      setSlice(buff, endIndex .. buff.len-1)

main()
