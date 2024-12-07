Speech-To-Text experiments; nothing to see here; shhhh

## What?

- Get audio from device (mic or desktop) or audio file
- Normalize the audio to 16kHz mono
- Get the speech segments with VAD with a min/max duration
- Get the transcript of the segment with Whisper
- Ideally with real-time stream support. Albeit whisper.cpp works
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

Unlicense. You cannot use this or even look at it. Move along.

## Notes

- [Static onnxruntime](https://github.com/csukuangfj/onnxruntime-libs/releases/tag/v1.20.1).
- [Dynamic onnxruntime](https://github.com/microsoft/onnxruntime/releases/tag/v1.20.1)
- Static libs/libwhisper.a is built with CPU support only. It requires OpenBlas with OpenMP support.
- Go to [whisper.cpp](https://github.com/ggerganov/whisper.cpp) to build Whisper with CUDA support. I tried with Vulkan, but the generated text was bad.
