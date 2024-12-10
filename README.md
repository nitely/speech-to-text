Speech-To-Text experiments; nothing to see here; shhhh

## What?

- Get audio from device (mic or desktop) or audio file
- Normalize the audio to 16kHz mono
- Get the speech segments with VAD with a min/max duration
- Get the transcript of the segment with Whisper
- Real-time stream support. Albeit whisper.cpp works
  best on 30s segments

## What for?

- Voice comms
- Transcriptions
- Closed Caption
- Real-time translation
- Capture system output speech to text

## Why?

Learnings.

## License

Unlicense. All rights reserved.

## Notes

- [Static onnxruntime](https://github.com/csukuangfj/onnxruntime-libs/releases/tag/v1.20.1).
- [Dynamic onnxruntime](https://github.com/microsoft/onnxruntime/releases/tag/v1.20.1)
- Static libs/libwhisper.a is built with CPU support only. It requires OpenBlas with OpenMP support.
- Go to [whisper.cpp](https://github.com/ggerganov/whisper.cpp) to build Whisper with CUDA support. I tried with Vulkan, but the generated text was bad.

## Experiment results so far

- Vulkan: whisper with vulkan seems really buggy. It's not able to generate good quality output compared to CPU.
- CUDA: I've not tried whisper with CUDA yet.
- Real-time using small models works quite well. Much better for english. Using the CPU backend is fast enough for real time STT.
- Translation using a small whisper model is not good, as expected. I suspect we need to pass previous text to whisper for context. I may try this later.
- Silero VAD improves real-time STT tremendously. Whisper allucinates less.
- Real-time voice comms work well.
- Real-time works best for slow paced speeches. It works well on speeches like those of JFK, but struggles more with live news, where speakers tend to talk faster. This may be because it is harder to capture an entire phrase. Setting the VAD silence duration too low results in fragmented phrases.
