
when defined(useFutharkForMiniaudio):
  import std/os
  import pkg/futhark
  importc:
    outputPath currentSourcePath.parentDir / "miniaudio_generated.nim"
    path "./miniaudio"
    "miniaudio.h"
else:
  {.compile("miniaudio/miniaudio.c", "").}
  import ./miniaudio_generated

proc dataCallback(
  pDevice: ptr ma_device,
  pOutput: pointer,
  pInput: pointer,
  frameCount: ma_uint32
) {.cdecl.} =
  let pEncoder = cast[ptr ma_encoder](pDevice.pUserData)
  doAssert pEncoder != nil
  discard ma_encoder_write_pcm_frames(pEncoder, pInput, frameCount, nil)
  discard pOutput

proc main() =
  var result: ma_result
  var encoderConfig: ma_encoder_config
  var encoder: ma_encoder
  var deviceConfig: ma_device_config
  var device: ma_device
  encoderConfig = ma_encoder_config_init(ma_encoding_format_wav, ma_format_f32, 1, 16000)
  defer: ma_encoder_uninit(addr encoder)
  if ma_encoder_init_file("out.wav", addr encoderConfig, addr encoder) != MA_SUCCESS:
    echo "Failed to initialize output file."
    quit(-1)
  deviceConfig = ma_device_config_init(ma_device_type_capture)
  deviceConfig.capture.format = encoder.config.format
  deviceConfig.capture.channels = encoder.config.channels
  deviceConfig.sampleRate = encoder.config.sampleRate
  deviceConfig.dataCallback = dataCallback
  deviceConfig.pUserData = addr encoder
  var context: ma_context  #struct_ma_context_536871418
  defer: discard ma_context_uninit(addr context)
  doAssert ma_context_init(nil, 0, nil, addr context) == MA_SUCCESS
  var captureDevices: ptr ma_device_info
  var captureDeviceCount: uint32
  doAssert ma_context_get_devices(addr context, nil, nil, addr captureDevices, addr captureDeviceCount) == MA_SUCCESS
  let captureDeviceArray = cast[ptr UncheckedArray[ma_device_info]](captureDevices)
  for iDevice in 0 ..< int(captureDeviceCount):
    let deviceName = cast[cstring](addr captureDeviceArray[iDevice].name[0])
    echo "  ", iDevice, ": ", $deviceName
  # XXX pick the Monitor audio analog stereo
  doAssert captureDeviceCount > 0
  deviceConfig.capture.pDeviceID = addr captureDeviceArray[0].id
  result = ma_device_init(nil, addr deviceConfig, addr device)
  if result != MA_SUCCESS:
    echo "Failed to initialize loopback device."
    quit(-2)
  defer: ma_device_uninit(addr device)
  result = ma_device_start(addr device)
  if result != MA_SUCCESS:
    echo "Failed to start device."
    quit(-3)
  echo "Press Enter to stop recording..."
  discard stdin.readLine()
  quit(0)

main()

