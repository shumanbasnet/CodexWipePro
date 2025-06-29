#!/bin/bash
set -e
# CodexWipe Pro - ArchISO Auto Builder

PROFILE_DIR="$(pwd)/iso"
OUTPUT_ISO="codexwipepro-$(date +%Y%m%d)-x86_64.iso"

echo "=== CodexWipe Pro: ArchISO Auto Builder ==="
echo "Building custom ISO from $PROFILE_DIR ..."

mkdir -p out

mkarchiso -v -w ./out -o ./out "$PROFILE_DIR"

# Move or rename output ISO for clarity
mv ./out/archlinux-*.iso "./out/$OUTPUT_ISO"

echo "Done! Your ISO is at: ./out/$OUTPUT_ISO"
