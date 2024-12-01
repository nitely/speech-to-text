import std/[os, times]

import futhark

when defined(useFuthark) or defined(useFutharkForSilerovad):
  importc:
    outputPath currentSourcePath.parentDir / "onnxruntime_c_api_generated.nim"
    path "./"
    "onnxruntime_c_api.h"
else:
  include onnxruntime_c_api_generated



