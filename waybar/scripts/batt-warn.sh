#!/usr/bin/env bash

DOTS_DIR="$HOME/.arch"
ICONS_PATH="$DOTS_DIR/.assets/icons"

LOW=20
CRITICAL=10

WARN_CRITICAL_FILE="/tmp/.batt-warn-critical"
WARN_LOW_FILE="/tmp/.batt-warn-low"
WARN_FULL_FILE="/tmp/.batt-warn-full"

BATT_STATUS=$(cat /sys/class/power_supply/BAT1/status)
BATT_LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)

if [ "$BATT_STATUS" = "Discharging" ]; then
  if [ "$BATT_LEVEL" -le "$CRITICAL" ]; then
    if [ ! -f "$WARN_CRITICAL_FILE" ]; then
      notify-send -u critical "Battery critical" "Suspending in 30 seconds" -i "$ICONS_PATH"/batt-critical.png
      sleep 30

      # Refresh battery status
      BATT_STATUS=$(cat /sys/class/power_supply/BAT1/status)

      if [ "$BATT_STATUS" = "Charging" ]; then
        notify-send -u critical "System" "Power connected. Aborting suspend" -i "$ICONS_PATH"/batt-critical.png
        exit 0
      else
        touch "$WARN_CRITICAL_FILE"
        hyprlock
        sleep 2
        systemctl suspend
      fi
    fi

  elif [ "$BATT_LEVEL" -le "$LOW" ]; then
    if [ ! -f "$WARN_LOW_FILE" ]; then
      notify-send -u critical "Battery low" "Please plug me in kudasai" -i "$ICONS_PATH"/batt-low.png
      touch "$WARN_LOW_FILE"
    fi
  fi

  rm -f "$WARN_FULL_FILE"

elif [ "$BATT_STATUS" = "Charging" ]; then
  rm -f "$WARN_CRITICAL_FILE" "$WARN_LOW_FILE" "$WARN_FULL_FILE"

elif [ "$BATT_STATUS" = "Full" ]; then
  if [ ! -f "$WARN_FULL_FILE" ]; then
    notify-send -u critical "Battery full" "Please unplug me" -i "$ICONS_PATH"/batt-full.png
    touch "$WARN_FULL_FILE"
  fi
fi

