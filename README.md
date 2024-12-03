Speech-To-Text experiments; nothing to see here; shhhh

Planned:

- Get audio from device (mic or desktop) or audio file
- Normalize the audio to 16kHz mono
- Get the speech segments with VAD with a min/max duration
- Get the transcript of the segment with Whisper
- Ideally with real-time stream support. Albeit whisper.cpp works
  best with 30s segments
