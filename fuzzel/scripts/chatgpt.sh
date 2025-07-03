#!/usr/bin/env bash

pkill fuzzel

BROWSER="/usr/bin/chromium"
XARGS="/usr/bin/xargs"
PLACEHOLDER="ask chatgpt"
SEARCHENGINE="https://chat.openai.com/?q={}"

echo | /usr/bin/fuzzel --dmenu -w 100 -p "> " --lines 0 --placeholder "$PLACEHOLDER" | $XARGS -r -I {} $BROWSER --app="$SEARCHENGINE" 

