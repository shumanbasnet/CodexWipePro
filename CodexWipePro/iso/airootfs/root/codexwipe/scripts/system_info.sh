#!/bin/bash
set -e

REPORT="/root/codexwipe/reports/system_info_$(date +%Y%m%d_%H%M%S).html"
mkdir -p /root/codexwipe/reports

echo "<html><head><title>System Info</title></head><body><h1>CodexWipe Pro - System Info</h1><pre>" > "$REPORT"
echo "Hostname: $(hostname)" >> "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo -e "\n== lshw ==" >> "$REPORT"
lshw -short >> "$REPORT"
echo -e "\n== dmidecode ==" >> "$REPORT"
dmidecode -t system >> "$REPORT"
echo -e "\n== lsblk ==" >> "$REPORT"
lsblk -o NAME,SIZE,MODEL,TYPE >> "$REPORT"
echo -e "\n== nvme list ==" >> "$REPORT"
nvme list >> "$REPORT"
echo "</pre></body></html>" >> "$REPORT"

zenity --info --text="System info saved to $REPORT"
xdg-open "$REPORT" 2>/dev/null || true
