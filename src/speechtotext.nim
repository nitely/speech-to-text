
when defined(useFutharkForWhisper):
  import std/os
  import futhark

  importc:
    outputPath currentSourcePath.parentDir / "whisper_generated.nim"
    path "./whisper"
    rename FILE, CFile
    "whisper.h"
else:
  {.passL: "libs/libwhisper.a".}
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

type
  SttParams* = object
    wparams: struct_whisper_full_params

const languageEn = "en"
const languageJa = "ja"
const languageEs = "es"

type SttLang* = enum
  sttLangEn, sttLangJa, sttLangEs

proc initSttParams*(
  lang = sttLangEn,
  translate = false,
  threads = 1,
  audioCtx = 0
): SttParams =
  var wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY)
  wparams.print_progress = false
  wparams.print_special = false
  wparams.print_realtime = false
  wparams.print_timestamps = false
  wparams.single_segment = false
  wparams.translate = translate
  wparams.max_tokens = 0
  case lang
  of sttLangEn: wparams.language = languageEn
  of sttLangJa: wparams.language = languageJa
  of sttLangEs: wparams.language = languageEs
  wparams.n_threads = threads.cint
  wparams.audio_ctx = audioCtx.cint
  SttParams(
    wparams: wparams
  )

proc toText*(
  stt: SpeechToText,
  pcm: seq[float32],
  params: SttParams
): string =
  if pcm.len == 0:
    return ""
  const extraPad = 1000
  var pcm = pcm
  if pcm.len < 16000+extraPad:
    pcm.setLen 16000+extraPad
  if whisper_full(stt.ctx, params.wparams, addr pcm[0], pcm.len.cint) != 0:
    echo "Error: failed to process audio"
    return ""
  let n_segments = whisper_full_n_segments(stt.ctx)
  result = ""
  for i in 0 .. n_segments-1:
    result.add whisper_full_get_segment_text(stt.ctx, i)
    if i < n_segments-1:
      result.add " "

proc toText*(
  stt: SpeechToText,
  pcm: seq[float32]
): string =
  let defaultParams = initSttParams()
  toText(stt, pcm, defaultParams)
