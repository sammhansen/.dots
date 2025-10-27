#!/usr/bin/env bash

OPTIONS="color picker\nscreen record\nscreenshot\neasyeffects bypass\nqr code"
CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu -p "> " --placeholder "choose an action")

case "$CHOICE" in
"color picker")
	~/.config/niri/scripts/colorpicker.sh
	;;
"screen record")
	~/.config/niri/scripts/record.sh
	;;
"screenshot")
	niri msg action screenshot
	;;
"easyeffects bypass")
	if [ "$(easyeffects --bypass 3)" = "0" ]; then
		easyeffects --bypass 1
	else
		easyeffects --bypass 2
	fi
	;;
"qr code")
	~/.config/swaync/scripts/qr.sh
	;;
esac
