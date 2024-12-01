import std/[os, times]

{.passL: currentSourcePath.parentDir() & "/libwhisper.a".}

when defined(useFuthark) or defined(useFutharkForWhisper):
  import futhark

  importc:
    outputPath currentSourcePath.parentDir / "whisper_generated.nim"
    path "./whisper/include"
    "whisper.h"
else:
  include "whisper_generated.nim"

import std/lenientops
import ./sdlaudio

proc main =
  let threads = 1'i32
  let stepMs = 3000'i32
  let lengthMs = 10000'i32
  let keepMs = 200'i32
  let captureId = -1'i32
  #let maxTokens = 32'i32
  let audioCtx = 0'i32
  let vadThold = 0.6'f32
  let freqThold = 100.0'f32
  let lang = "en"
  let model = "./src/models/ggml-base.en.bin"
  let nSamplesStep = int32(0.001'f32 * stepMs * WHISPER_SAMPLE_RATE)
  let nSamplesLen = int32(0.001'f32 * lengthMs * WHISPER_SAMPLE_RATE)
  let nSamplesKeep = int32(0.001'f32 * keepMs * WHISPER_SAMPLE_RATE)
  let nSamples30s = int32(0.001'f32 * 30000'f32 * WHISPER_SAMPLE_RATE)
  let useVad = nSamplesStep <= 0
  let nNewLine = if not useVad:
    max(1, lengthMs div stepMs - 1)
  else:
    1
  let noTimestamps = not useVad
  let noContext = useVad
  let maxTokens = 0'i32
  var audio = initAudioAsync(lengthMs)
  if not audio.init(captureId, WHISPER_SAMPLE_RATE):
    echo "audio.init fail"
    quit()
  if not audio.resume():
    echo "audio.resume fail"
    quit()
  var cparams = whisper_context_default_params()
  cparams.use_gpu = true
  cparams.flash_attn = false
  var ctx = whisper_init_from_file_with_params(model, cparams)
  var pcmf32: seq[float32] = newSeq[float32](nSamples30s)
  var pcmf32_old: seq[float32]
  var pcmf32_new: seq[float32] = newSeq[float32](nSamples30s)
  var prompt_tokens: seq[whisperToken]
  echo "[Start speaking]"
  var t_last = getTime()
  let t_start = t_last
  var n_iter = 0
  var is_running = true
  while is_running:
    is_running = sdl_poll_events()
    if not is_running:
      break
    echo "enter"
    # Process new audio
    if not use_vad:
      while true:
        pcmf32_new = audio.get(stepMs)
        if pcmf32_new.len > (2 * n_samples_step):
          echo "\n\nWarning: cannot process audio fast enough, dropping audio ..."
          audio.clear()
          continue
        if pcmf32_new.len >= n_samples_step:
          audio.clear()
          break
        sleep(1)
      let n_samples_new = pcmf32_new.len
      let n_samples_take = min(pcmf32_old.len, max(0, n_samples_keep + n_samples_len - n_samples_new))
      pcmf32 = newSeq[float32](n_samples_new + n_samples_take)
      for i in 0 .. n_samples_take-1:
        pcmf32[i] = pcmf32_old[pcmf32_old.len - n_samples_take + i]
      pcmf32.add(pcmf32_new[0 .. n_samples_new-1])
      pcmf32_old = pcmf32

    # Run the inference
    var wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY)
    wparams.print_progress = false
    wparams.print_special = false
    wparams.print_realtime = false
    wparams.print_timestamps = true
    wparams.translate = false
    wparams.single_segment = not use_vad
    wparams.max_tokens = maxTokens
    wparams.language = lang
    wparams.n_threads = threads
    wparams.audio_ctx = audioCtx
    wparams.tdrz_enable = false
    #wparams.temperature_inc = if no_fallback: 0.0 else: wparams.temperature_inc
    wparams.prompt_tokens = nil #if noContext: nil else: prompt_tokens[0 .. ^1]
    if whisper_full(ctx, wparams, addr pcmf32[0], pcmf32.len.cint) != 0:
      echo "Error: failed to process audio"
      return
    let n_segments = whisper_full_n_segments(ctx)
    for i in 0..<n_segments:
      let text = whisper_full_get_segment_text(ctx, i)
      echo text
    n_iter.inc()
    if not use_vad and (n_iter mod n_new_line) == 0:
      echo "\n"
      pcmf32_old = pcmf32[pcmf32.len - n_samples_keep ..< pcmf32.len]
      if not no_context:
        prompt_tokens.setLen 0
        let n_segments = whisper_full_n_segments(ctx)
        for i in 0..<n_segments:
          let token_count = whisper_full_n_tokens(ctx, i)
          for j in 0..<token_count:
            prompt_tokens.add(whisper_full_get_token_id(ctx, i, j))
      
  echo "ok"
main()