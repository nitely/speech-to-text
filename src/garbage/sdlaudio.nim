import std/[sequtils, locks]
import pkg/[sdl2, sdl2.audio]

type
  AudioAsync* = object
    m_len_ms: int
    m_running: bool
    m_dev_id_in: AudioDeviceID
    m_sample_rate: int
    m_audio: seq[float32]
    m_audio_pos: int
    m_audio_len: int
    m_mutex: Lock

proc initAudioAsync*(len_ms: int): AudioAsync =
  result = AudioAsync(
    m_len_ms: len_ms,
    m_running: false,
    m_dev_id_in: 0,
    m_sample_rate: 0,
    m_audio: @[],
    m_audio_pos: 0,
    m_audio_len: 0,
    m_mutex: Lock()
  )
  initLock(result.m_mutex)

# Destructor
proc closeAudioAsync*(audio: var AudioAsync) =
  if audio.m_dev_id_in != 0:
    closeAudioDevice(audio.m_dev_id_in)

proc callback(userdata: pointer, stream: ptr uint8, length: cint) {.cdecl, gcsafe, raises: [].} =
  let audio = cast[ptr AudioAsync](userdata)
  #echo "callback"
  if not audio.m_running:
    return

  withLock audio.m_mutex:
    var stream = stream
    var n_samples = length div sizeof(float32)
    if n_samples > audio.m_audio.len:
      n_samples = audio.m_audio.len
      stream = cast[ptr uint8](cast[int](stream) + (length - n_samples * sizeof(float32)))

    if audio.m_audio_pos + n_samples > audio.m_audio.len:
      let n0 = audio.m_audio.len - audio.m_audio_pos
      copyMem(addr audio.m_audio[audio.m_audio_pos], stream, n0 * sizeof(float32))
      copyMem(
        addr audio.m_audio[0],
        cast[ptr uint8](cast[int](stream) + n0 * sizeof(float32)), (n_samples - n0) * sizeof(float32)
      )
      audio.m_audio_pos = (audio.m_audio_pos + n_samples) mod audio.m_audio.len
      audio.m_audio_len = audio.m_audio.len
    else:
      copyMem(addr audio.m_audio[audio.m_audio_pos], stream, n_samples * sizeof(float32))
      audio.m_audio_pos = (audio.m_audio_pos + n_samples) mod audio.m_audio.len
      audio.m_audio_len = min(audio.m_audio_len + n_samples, audio.m_audio.len)

proc init*(audio: var AudioAsync, capture_id: int, sample_rate: int32): bool =
  if init(INIT_AUDIO) != SdlSuccess:
    echo "Couldn't initialize SDL: %s\n", getError()
    return false

  #setHintWithPriority(SDL_HINT_AUDIO_RESAMPLING_MODE, "medium", SDL_HINT_OVERRIDE)

  let nDevices = getNumAudioDevices(true.cint)
  echo "Found ", nDevices, " capture devices:"
  for i in 0..<nDevices:
    echo "  - Capture device #", i, ": '", $getAudioDeviceName(i, true.cint), "'"

  var captureSpecRequested, captureSpecObtained: AudioSpec
  captureSpecRequested.freq = sample_rate
  captureSpecRequested.format = AUDIO_F32
  captureSpecRequested.channels = 1
  captureSpecRequested.samples = 1024
  captureSpecRequested.callback = callback
  captureSpecRequested.userdata = addr audio

  if capture_id >= 0:
    echo "Attempting to open capture device ", capture_id, ": '", $getAudioDeviceName(capture_id.cint, true.cint), "'..."
    audio.m_dev_id_in = openAudioDevice(getAudioDeviceName(capture_id.cint, true.cint), true.cint,
                                            addr captureSpecRequested, addr captureSpecObtained, 0)
  else:
    echo "Attempting to open default capture device..."
    audio.m_dev_id_in = openAudioDevice(nil, true.cint,
                                            addr captureSpecRequested, addr captureSpecObtained, 0)

  if audio.m_dev_id_in == 0:
    echo "Couldn't open an audio device for capture: ", $getError()
    return false
  else:
    echo "Obtained spec for input device (SDL Id = ", audio.m_dev_id_in, "):"
    echo "  - Sample rate:       ", captureSpecObtained.freq
    echo "  - Format:            ", captureSpecObtained.format, " (required: ", captureSpecRequested.format, ")"
    echo "  - Channels:          ", captureSpecObtained.channels, " (required: ", captureSpecRequested.channels, ")"
    echo "  - Samples per frame: ", captureSpecObtained.samples

  audio.m_sample_rate = captureSpecObtained.freq
  audio.m_audio.setLen((audio.m_sample_rate * audio.m_len_ms) div 1000)

  return true

proc resume*(audio: var AudioAsync): bool =
  if audio.m_dev_id_in == 0:
    echo "No audio device to resume!"
    return false

  if audio.m_running:
    echo "Already running!"
    return false

  pauseAudioDevice(audio.m_dev_id_in, 0)
  audio.m_running = true
  return true

proc pause*(audio: var AudioAsync): bool =
  if audio.m_dev_id_in == 0:
    echo "No audio device to pause!"
    return false

  if not audio.m_running:
    echo "Already paused!"
    return false

  pauseAudioDevice(audio.m_dev_id_in, 1)
  audio.m_running = false
  return true

proc clear*(audio: var AudioAsync): bool {.discardable.} =
  if audio.m_dev_id_in == 0:
    echo "No audio device to clear!"
    return false

  if not audio.m_running:
    echo "Not running!"
    return false

  # Clear the audio buffer
  withLock audio.m_mutex:
    audio.m_audio_pos = 0
    audio.m_audio_len = 0
  return true

proc get*(audio: var AudioAsync, ms: int): seq[float32] =
  if audio.m_dev_id_in == 0 or not audio.m_running:
    echo "No audio device or not running!"
    return @[]
  
  withLock audio.m_mutex:
    var n_samples = (audio.m_sample_rate * ms) div 1000
    if n_samples > audio.m_audio_len:
      n_samples = audio.m_audio_len

    result.setLen(n_samples)

    var s0 = audio.m_audio_pos - n_samples
    if s0 < 0:
      s0 += audio.m_audio.len

    if s0 + n_samples > audio.m_audio.len:
      let n0 = audio.m_audio.len - s0
      copyMem(addr result[0], addr audio.m_audio[s0], n0 * sizeof(float32))
      copyMem(addr result[n0], addr audio.m_audio[0], (n_samples - n0) * sizeof(float32))
    elif n_samples > 0:
      copyMem(addr result[0], addr audio.m_audio[s0], n_samples * sizeof(float32))
    else:
      # if I reconnect my mic I get samples again
      echo "no samples"

# Poll SDL events
proc sdlPollEvents*(): bool =
  var event: Event
  while pollEvent(event) != False32:
    if event.kind == QuitEvent:
      return false
  return true
