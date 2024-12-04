
import ../src/speechtotext
import ./utils

test "Test jfk.wav":
  let samples = readWav("./samples/jfk.wav")
  let stt = initSpeechToText("./src/models/ggml-base.en-q5_0.bin")
  doAssert stt.toText(samples) ==
    " And so my fellow Americans, ask not what your country can do for you, ask what you can do for your country."
