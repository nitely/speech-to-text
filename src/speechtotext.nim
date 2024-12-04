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

proc toText*(pcm: seq[float32]): string =
  if pcm.len == 0:
    return ""
  const extra = 1000
  var pcm = pcm
  if pcm.len < 16000+extra:
    pcm.setLen 16000+extra
  let model = "./src/models/ggml-base.en-q5_0.bin"
  #let model = "./src/models/ggml-large-v3-turbo-q5_0.bin"
  #let model = "./src/models/ggml-model-whisper-small-q5_1.bin"
  var cparams = whisper_context_default_params()
  cparams.use_gpu = true
  cparams.flash_attn = false
  var ctx = whisper_init_from_file_with_params(model.cstring, cparams)
  var wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY)
  wparams.print_progress = false
  wparams.print_special = false
  wparams.print_realtime = false
  wparams.print_timestamps = false
  wparams.translate = false
  wparams.single_segment = false
  wparams.max_tokens = 0
  wparams.language = "en"
  wparams.n_threads = 1
  wparams.audio_ctx = 0
  wparams.prompt_tokens = nil
  if whisper_full(ctx, wparams, addr pcm[0], pcm.len.cint) != 0:
    echo "Error: failed to process audio"
    return ""
  let n_segments = whisper_full_n_segments(ctx)
  result = ""
  for i in 0 .. n_segments-1:
    result.add whisper_full_get_segment_text(ctx, i)
    if i < n_segments-1:
      result.add " "
