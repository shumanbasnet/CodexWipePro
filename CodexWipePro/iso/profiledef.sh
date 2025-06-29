#!/usr/bin/env bash
# CodexWipe Pro - ArchISO Profile Def

iso_name="codexwipepro"
iso_label="CODEXWIPEPRO"
iso_publisher="Suman Basnet & OpenAI Codex"
iso_application="CodexWipe Pro Live ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
arch="x86_64"

# Boot modes supported by the ISO
bootmodes=(
  'bios.syslinux.mbr' 'bios.syslinux.eltorito'
  'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
  'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito'
)

# Pacman configuration to use during build
pacman_conf="pacman.conf"

# Filesystem image options
airootfs_image_type="squashfs"
airootfs_image_tool_options=(
  '-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M'
)

# Compression used for the bootstrap tarball
bootstrap_tarball_compression=(
  'zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19'
)

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
)
