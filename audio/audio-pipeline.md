## Audio capture and preprocessing

Audio is captured using Termux:API and converted with FFmpeg to a Whisper-compatible WAV format (16 kHz, mono, 16-bit PCM).

Verified properties:
- Sample rate: 16000 Hz
- Channels: 1
- Precision: 16-bit PCM

This format is suitable for on-device speech-to-text models.
