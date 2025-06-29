#!/bin/bash
set -e
# CodexWipe Pro - ArchISO Auto Builder

# Ensure the script is run as root so mkarchiso can operate
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root." >&2
    exit 1
fi

# mkarchiso lives in the archiso package. Verify it's available before continuing.
if ! command -v mkarchiso >/dev/null 2>&1; then
    echo "mkarchiso not found. Install the 'archiso' package first." >&2
    exit 1
fi

# Resolve profile directory relative to this script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROFILE_DIR="$SCRIPT_DIR/iso"
OUTPUT_ISO="codexwipepro-$(date +%Y%m%d)-x86_64.iso"

echo "=== CodexWipe Pro: ArchISO Auto Builder ==="
echo "Building custom ISO from $PROFILE_DIR ..."

mkdir -p out

mkarchiso -v -w ./out -o ./out "$PROFILE_DIR"

# Move or rename output ISO for clarity
mv ./out/archlinux-*.iso "./out/$OUTPUT_ISO"

echo "Done! Your ISO is at: ./out/$OUTPUT_ISO"
