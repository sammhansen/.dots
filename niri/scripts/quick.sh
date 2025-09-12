#!/usr/bin/env bash

OPTIONS="bypass\nscreenshot\nqr code"
CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu -p "> " --placeholder "choose an action")

case "$CHOICE" in
  bypass)
    if [ "$(easyeffects --bypass 3)" = "0" ]; then
      easyeffects --bypass 1
     else 
      easyeffects --bypass 2
    fi
    ;;
  screenshot)
    niri msg action screenshot
    ;;
  "qr code")
    ~/.config/swaync/scripts/qr.sh
esac

