
import ../src/speechtotext
import ./utils

test "Test jfk.wav":
  let samples = readWav("./samples/jfk.wav")
  doAssert samples.toText ==
    " And so my fellow Americans, ask not what your country can do for you, ask what you can do for your country."
