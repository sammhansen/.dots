#!/usr/bin/env bash

pkill fuzzel

BROWSER="/usr/bin/chromium"
PROMPT="󰊭  "
PLACEHOLDER="Search Google or type URL"
SEARCHENGINE="https://www.google.com/search?q="

query=$(echo | /usr/bin/fuzzel --dmenu -w 100 -p "$PROMPT" --lines 0 --placeholder "$PLACEHOLDER")


[ -z "$query" ] && exit 0

if [[ "$query" =~ ^https?:// ]]; then
    $BROWSER --app="$query"
else
    $BROWSER --app="${SEARCHENGINE}${query// /+}"
fi

