## NumPy integration on Termux

NumPy is installed via Termux (python-numpy) and accessed inside the smartai virtual environment using --system-site-packages.
This avoids unstable source builds and ensures ABI compatibility on Android (ARM64).
