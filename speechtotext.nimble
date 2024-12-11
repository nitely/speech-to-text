version       = "0.1.0"
author        = "nitely"
description   = "Speech-To-Text"
license       = "MIT"
srcDir        = "src"
skipDirs = @["tests", "docs", "lib", "models"]

requires "nim >= 2.2.0"
requires "futhark"
requires "sdl2"
requires "https://github.com/nitely/nim-silero-vad"

task test, "Test":
  exec "nim c -r tests/testsilerovad.nim"
  exec "nim c -r tests/testspeechtotext.nim"
  exec "nim c -r tests/testall.nim"

