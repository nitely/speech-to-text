
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

import std/locks

type
  Recorder* = object
    buffLock: Lock
    buff: seq[float32]
    recLock: Lock
    recCond: Cond
    running: bool 

proc `=sink`*(dest: var Recorder; src: Recorder) {.error.}
proc `=dup`*(src: Recorder): Recorder {.error.}
proc `=copy`*(dest: var Recorder; src: Recorder) {.error.}
proc `=wasMoved`*(dest: var Recorder) {.error.}

proc `=destroy`*(r: Recorder) =
  deinitLock(r.buffLock)
  deinitLock(r.recLock)
  deinitCond(r.recCond)
  `=destroy`(r.buff)

proc initRecorder: Recorder =
  result = Recorder(
    buffLock: default(Lock),
    buff: newSeq[float32](),
    recLock: default(Lock),
    recCond: default(Cond),
    running: false 
  )
  initLock(result.buffLock)
  initLock(result.recLock)
  initCond(result.recCond)

proc captureCallback(
  pDevice: ptr ma_device,
  pOutput: pointer,
  pInput: pointer,
  frameCount: ma_uint32
) {.cdecl.} =
  #echo "callback"
  discard

proc listen(rec: ptr Recorder) {.thread.} =
  var deviceConfig: ma_device_config
  var device: ma_device
  deviceConfig = ma_device_config_init(ma_device_type_capture)
  deviceConfig.capture.format = ma_format_f32
  deviceConfig.capture.channels = 1
  deviceConfig.sampleRate = 16000
  deviceConfig.dataCallback = captureCallback
  deviceConfig.pUserData = addr rec
  # XXX fix works in my machine
  deviceConfig.capture.pDeviceID = nil #addr captureDeviceArray[0].id
  if ma_device_init(nil, addr deviceConfig, addr device) != MA_SUCCESS:
    echo "Failed to initialize loopback device."
    return
  defer: ma_device_uninit(addr device)
  if ma_device_start(addr device) != MA_SUCCESS:
    echo "Failed to start device."
    return
  withLock rec.recLock:
    if rec.running:
      rec.recCond.wait(rec.recLock)
      echo "exit worker"

type Worker = Thread[ptr Recorder]

proc start(rec: var Recorder, worker: var Worker) =
  rec.running = true
  createThread(worker, listen, addr rec)

proc stop(rec: var Recorder, worker: Worker) =
  withLock rec.recLock:
    rec.running = false
    rec.recCond.signal()
  joinThread(worker)

proc listen*(rec: var Recorder) =
  var worker = default(Worker)
  rec.start(worker)
  defer: rec.stop(worker)
  echo "Press Enter to stop recording..."
  discard stdin.readLine()

var rec = initRecorder()
listen(rec)
