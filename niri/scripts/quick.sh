#!/usr/bin/env bash

OPTIONS="xwayland"
CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu -p "> " --placeholder "choose an action")

case "$CHOICE" in
  xwayland)
    if pgrep -x "Xwayland" > /dev/null; then
      pkill -f "xwayland-satellite"
      notify-send -i ~/.arch/.assets/icons/nix.png "System" "Xwayland has been turned off"
    else
      xwayland-satellite :1 &
      notify-send -i ~/.arch/.assets/icons/nix.png "System" "Xwayland has been turned on"
    fi
    ;;
esac
