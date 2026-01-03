## Offline speech-to-text (STT)

Speech-to-text is implemented using whisper.cpp, built locally on Termux (ARM64, CPU-only).

Configuration:
- Model: ggml-tiny.en (~77 MB)
- Runtime: whisper-cli
- Execution: fully offline (no cloud, no API keys)
- Audio input: 16 kHz, mono, 16-bit PCM WAV

The pipeline successfully transcribes recorded audio into text and stores output locally for downstream assistant logic.
