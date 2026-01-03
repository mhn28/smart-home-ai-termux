#!/data/data/com.termux/files/usr/bin/bash

AUDIO=$(ls -t /storage/emulated/0/TermuxAudioRecording_*.m4a | head -n 1)
WAV=assistant.wav

# Convert audio to Whisper-compatible WAV
ffmpeg -y -i "$AUDIO" -ar 16000 -ac 1 -c:a pcm_s16le "$WAV" >/dev/null 2>&1

# Run STT
TEXT=$(./whisper.cpp/build/bin/whisper-cli \
  -m whisper.cpp/models/ggml-tiny.en.bin \
  -f "$WAV" \
  -nt -np 2>/dev/null | tail -n +1)

# Simple response logic
RESPONSE="I heard you say: $TEXT"

# Speak response
termux-tts-speak "$RESPONSE"
