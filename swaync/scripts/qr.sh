#!/usr/bin/env bash 

swaync-client --close-panel
grim -g "$(slurp)" - | zbarimg - | sed 's/^QR-Code://g' | wl-copy
