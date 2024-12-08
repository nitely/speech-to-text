
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
    buffLock, recLock: Lock
    buffCond, recCond: Cond
    buff: seq[float32]
    buffWait, running: bool 

proc `=sink`*(dest: var Recorder; src: Recorder) {.error.}
proc `=dup`*(src: Recorder): Recorder {.error.}
proc `=copy`*(dest: var Recorder; src: Recorder) {.error.}
proc `=wasMoved`*(dest: var Recorder) {.error.}

proc `=destroy`*(r: Recorder) =
  deinitLock(r.buffLock)
  deinitCond(r.buffCond)
  deinitLock(r.recLock)
  deinitCond(r.recCond)
  `=destroy`(r.buff)

proc initRecorder: Recorder =
  result = Recorder(
    buffLock: default(Lock),
    buffCond: default(Cond),
    buff: newSeq[float32](),
    recLock: default(Lock),
    recCond: default(Cond),
    buffWait: false,
    running: false
  )
  initLock(result.buffLock)
  initCond(result.buffCond)
  initLock(result.recLock)
  initCond(result.recCond)

proc captureCallback(
  pDevice: ptr ma_device,
  pOutput: pointer,
  pInput: pointer,
  frameCount: ma_uint32
) {.cdecl.} =
  #echo "callback"
  if pInput == nil:
    echo "no input"
    return
  var rec = cast[ptr Recorder](pDevice.pUserData)
  let input = cast[ptr UncheckedArray[float32]](pInput)
  withLock rec.buffLock:
    if rec.buff.len > 1_000_000:
      echo "dropping samples"
      rec.buff.setLen 0
    let L = rec.buff.len
    rec.buff.setLen L+frameCount.int
    for i in 0 .. frameCount.int-1:
      rec.buff[L+i] = input[i]
    if rec.buffWait:
      rec.buffWait = false
      rec.buffCond.signal()

proc listen(rec: ptr Recorder) {.thread.} =
  var deviceConfig: ma_device_config
  var device: ma_device
  deviceConfig = ma_device_config_init(ma_device_type_capture)
  deviceConfig.capture.format = ma_format_f32
  deviceConfig.capture.channels = 1
  deviceConfig.sampleRate = 16000
  deviceConfig.dataCallback = captureCallback
  deviceConfig.pUserData = rec
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
  var buff = newSeq[float32]()
  while true:
    withLock rec.buffLock:
      while rec.buff.len == 0:
        rec.buffWait = true
        rec.buffCond.wait(rec.buffLock)
      buff.setLen 0
      buff.add rec.buff
      rec.buff.setLen 0
    echo "Samples consumed: ", $buff.len
    echo "Press Enter to continue..."
    discard stdin.readLine()

var rec = initRecorder()
listen(rec)
