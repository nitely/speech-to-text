# Package

version       = "0.1.0"
author        = "nitely"
description   = "Speech-To-Text"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.2.0"
requires "futhark"
requires "sdl2"

task test, "Test":
  exec "nim c -r tests/testsilerovad.nim"

task gen, "Gen":
  exec "nim c -r -d:useFutharkForWhisper src/sttwhisper"
