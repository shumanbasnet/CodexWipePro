# CodexWipe Pro

AI-Powered Diagnostics & Data Erasure Toolkit
Built on Arch Linux by Suman Basnet. Thank You Julius Goboly, Niraj GC, Sumit Adhikari and Udit Parajuli for supporting this project.

## Features
- Secure erase for all major SSD/HDD vendors (nvme-cli, hdparm, vendor tools)
- System info reporting (HTML)
- Friendly GUI (YAD/Zenity)
- Branded splash/logo
- Logs & reports saved to USB/external

## Quick Build
```bash
./build_iso.sh
```
This produces an ISO in the `out/` directory named `codexwipepro-<date>-x86_64.iso`.

## Usage
Boot the generated ISO on the target machine. A menu lets you view system information or run a simulated secure erase. Reports are saved under `/root/codexwipe/reports`.

## Requirements
- Arch Linux base packages with `mkarchiso`
- Utilities: `zenity`, `nvme-cli`, `lshw`, `dmidecode`, `lsblk`

