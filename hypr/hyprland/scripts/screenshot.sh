#!/usr/bin/env bash

pkill fuzzel

OPTIONS="Snip\nScreen\nWindow"
PROMPT="󱣴  "
PLACEHOLDER="Select a mode"

CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu -p "$PROMPT" --placeholder="$PLACEHOLDER")

case "$CHOICE" in 
Screen)
  niri msg action screenshot-screen
  ;;
Snip)
  niri msg action screenshot
  ;;
Window)
  niri msg action screenshot-window
  ;;
esac
