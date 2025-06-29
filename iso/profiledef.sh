#!/usr/bin/env bash
# CodexWipe Pro - ArchISO Profile Def

iso_name="codexwipepro"
iso_label="CODEXWIPEPRO"
iso_publisher="Suman Basnet"
iso_application="CodexWipe Pro Live ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
arch="x86_64"

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
)
