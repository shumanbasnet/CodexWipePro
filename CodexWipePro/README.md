# CodexWipe Pro

AI-Powered Diagnostics & Data Erasure Toolkit
Built on Arch Linux, inspired by Blancco, powered by Suman Basnet & OpenAI Codex.

## Features
- Secure erase for all major SSD/HDD vendors (nvme-cli, hdparm, vendor tools)
- System info reporting (HTML)
- Friendly GUI (YAD/Zenity)
- Branded splash/logo
- Logs & reports saved to USB/external

## Quick Build
Run the build from an Arch Linux environment with the `archiso` package installed.

```bash
sudo pacman -S --needed archiso
sudo ./build_iso.sh
```

The custom ISO will appear in the `out/` directory.
