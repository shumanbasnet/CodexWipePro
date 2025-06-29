#!/bin/bash
set -e

while true; do
    CHOICE=$(zenity --list --title="CodexWipe Pro" \
        --column="Action" --width=400 --height=300 \
        "Show System Info" \
        "Secure Erase All Drives" \
        "Export Report" \
        "Shutdown")
    case "$CHOICE" in
        "Show System Info")
            bash /root/codexwipe/scripts/system_info.sh
            ;;
        "Secure Erase All Drives")
            bash /root/codexwipe/scripts/secure_erase.sh
            ;;
        "Export Report")
            zenity --info --text="Reports saved in /root/codexwipe/reports/"
            ;;
        "Shutdown")
            poweroff
            ;;
        *)
            exit 0
            ;;
    esac
done
