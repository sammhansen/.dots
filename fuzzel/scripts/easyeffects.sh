#!/usr/bin/env bash

OPTIONS="bypass\nbass\nbass-eq\nautogain"
PROMPT="  "
PLACEHOLDER="Select a preset"
CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu -p "$PROMPT" --placeholder="$PLACEHOLDER")

case "$CHOICE" in
bypass)
  if [ "$(easyeffects --bypass 3)" = "1" ]; then
    easyeffects --bypass 2
    notify-send "Easyeffects" "Bypass has been disabled" -i ~/.arch/.assets/icons/equalizer.png 
  else 
    easyeffects --bypass 1
    notify-send "Easyeffects" "Bypass has been enabled" -i ~/.arch/.assets/icons/equalizer.png 
  fi
  ;;
bass)
  easyeffects --bypass 2
  easyeffects --load-preset bass
  notify-send "Easyeffects" "Enabled plugin $CHOICE" -i ~/.arch/.assets/icons/equalizer.png 
  ;;
bass-eq)
  easyeffects --bypass 2
  easyeffects --load-preset bass-eq
  notify-send "Easyeffects" "Enabled plugin $CHOICE" -i ~/.arch/.assets/icons/equalizer.png 
  ;;
autogain)
  easyeffects --bypass 2
  easyeffects --load-preset autogain
  notify-send "Easyeffects" "Enabled plugin $CHOICE" -i ~/.arch/.assets/icons/equalizer.png 
  ;;
esac





