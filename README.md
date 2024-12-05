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

- [Static onnxruntime](https://huggingface.co/csukuangfj/onnxruntime-libs/commits/main) example: `https://huggingface.co/csukuangfj/onnxruntime-libs/blob/main/file_name.zip`
