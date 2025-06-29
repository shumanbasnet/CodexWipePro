#!/usr/bin/env bash
# CodexWipe Pro - ArchISO Profile Def
# shellcheck disable=SC2034

iso_name="codexwipepro"
iso_label="CODEXWIPEPRO"
iso_publisher="Suman Basnet & OpenAI Codex"
iso_application="CodexWipe Pro Live ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' \
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp' \
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
)
