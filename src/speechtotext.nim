import std/os

when defined(useFuthark) or defined(useFutharkForWhisper):
  import futhark

  importc:
    outputPath currentSourcePath.parentDir / "whisper_generated.nim"
    path "./whisper"
    rename FILE, CFile
    "whisper.h"
else:
  {.passL: currentSourcePath.parentDir() & "/libwhisper.a".}
  import ./whisper_generated

proc cb_log_disable(level: enum_ggml_log_level, message: cstring, user_data: pointer) {.cdecl.} =
  discard

whisper_log_set(cb_log_disable, nil)

type
  SpeechToText* = object
    modelPath: string
    ctx: ptr struct_whisper_context

proc `=sink`*(dest: var SpeechToText; src: SpeechToText) {.error.}
proc `=dup`*(src: SpeechToText): SpeechToText {.error.}
proc `=copy`*(dest: var SpeechToText; src: SpeechToText) {.error.}
proc `=wasMoved`*(dest: var SpeechToText) {.error.}

proc `=destroy`*(stt: SpeechToText) =
  if stt.ctx != nil:
    whisper_free(stt.ctx)
  `=destroy`(stt.modelPath)

proc initSpeechToText*(modelPath: string, useGpu = true): SpeechToText =
  var cparams = whisper_context_default_params()
  cparams.use_gpu = useGpu
  cparams.flash_attn = false
  result = SpeechToText(modelPath: modelPath)
  result.ctx = whisper_init_from_file_with_params(result.modelPath.cstring, cparams)

proc toText*(stt: SpeechToText, pcm: seq[float32], prompt = ""): string =
  if pcm.len == 0:
    return ""
  const extraPad = 1000
  var pcm = pcm
  if pcm.len < 16000+extraPad:
    pcm.setLen 16000+extraPad
  var wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY)
  wparams.print_progress = false
  wparams.print_special = false
  wparams.print_realtime = false
  wparams.print_timestamps = false
  wparams.single_segment = false
  wparams.translate = true
  wparams.max_tokens = 0
  wparams.language = "ja"
  wparams.n_threads = 2
  wparams.audio_ctx = 0
  if prompt.len > 0:
    wparams.initial_prompt = prompt.cstring
  if whisper_full(stt.ctx, wparams, addr pcm[0], pcm.len.cint) != 0:
    echo "Error: failed to process audio"
    return ""
  let n_segments = whisper_full_n_segments(stt.ctx)
  result = ""
  for i in 0 .. n_segments-1:
    result.add whisper_full_get_segment_text(stt.ctx, i)
    if i < n_segments-1:
      result.add " "
