import std/[os, times]

when defined(useFuthark) or defined(useFutharkForSilerovad):
  import futhark
  importc:
    outputPath currentSourcePath.parentDir / "onnxruntime_c_api_generated.nim"
    path "./"
    "onnxruntime_c_api.h"
else:
  include onnxruntime_c_api_generated



