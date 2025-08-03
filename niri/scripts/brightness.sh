#!/usr/bin/env bash
set +e

usage="Usage: $0 [+] or [-]"

if [ "$#" -ne 1 ]; then
    echo "No direction parameter provided"
    echo "$usage"
    exit 1
fi

arg="$1"

if [ "$arg" == "help" ] || [ "$arg" == "--help" ] || [ "$arg" == "-h" ]; then
    echo "$usage"
    exit 0
fi

if [ "$arg" != "+" ] && [ "$arg" != "-" ]; then
    echo "Direction parameter must be '+' or '-'"
    echo $usage 
    exit 1
fi

direction=$arg

monitor_data=$(hyprctl monitors -j)
focused_name=$(echo $monitor_data | jq -r '.[] | select(.focused == true) | .name')

if [ "$focused_name" == "eDP-1" ]; then
    if [ "$direction" == "-" ]; then
        swayosd-client --monitor "$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')" --brightness lower
    else
        swayosd-client --monitor "$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')" --brightness raise
    fi
else
    focused_id=$(echo $monitor_data | jq -r '.[] | select(.focused == true) | .id')
    ddcutil --sleep-multiplier=.2 --display=$focused_id setvcp 10 $direction 3
fi
