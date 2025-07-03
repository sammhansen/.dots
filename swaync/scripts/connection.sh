#!/usr/bin/env bash

LOCK_FILE="/tmp/connection.lock"
ADDR="8.8.8.8"
NOTIF_SOUND="/home/tamara/.arch/.assets/sounds/alert.mp3"
NOTIF_IMG="/home/tamara/.arch/.assets/icons/connected.png"

if [ -f "$LOCK_FILE" ]; then
  exit 1
fi

touch "$LOCK_FILE"

while ! ping -c1 -W1 "$ADDR" >/dev/null 2>&1; do
  sleep 2
done

mpv "$NOTIF_SOUND" >/dev/null 2>&1
notify-send -i "$NOTIF_IMG" "System" "Your internet connection is back"
rm -f "$LOCK_FILE"
