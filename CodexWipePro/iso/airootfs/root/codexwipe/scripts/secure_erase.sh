#!/bin/bash
set -e

REPORT="/root/codexwipe/reports/erase_$(date +%Y%m%d_%H%M%S).html"
mkdir -p /root/codexwipe/reports

echo "<html><head><title>Erase Report</title></head><body><h1>CodexWipe Pro - Secure Erase Report</h1><pre>" > "$REPORT"
echo "Date: $(date)" >> "$REPORT"

# List all drives (sda, nvme0n1, etc.)
for DRIVE in $(lsblk -dno NAME,TYPE | awk '$2 == "disk" {print $1}'); do
    echo -e "\n--- $DRIVE ---" >> "$REPORT"
    # Only simulate erase for now (safe test)
    echo "Secure erase (test mode) for $DRIVE" >> "$REPORT"
    sleep 1
    echo "Result: Success" >> "$REPORT"
done

echo "</pre></body></html>" >> "$REPORT"
zenity --info --text="Erase report saved to $REPORT"
xdg-open "$REPORT" 2>/dev/null || true
