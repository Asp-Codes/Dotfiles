#!/bin/bash

while true; do
    battery_level=$(upower -i $(upower -e | grep BAT) | awk '/percentage/ {print $2}' | tr -d '%')


    if [ "$battery_level" -le 10 ]; then
         notify-send "Battery Warning" "Battery level is at $battery_level%. Please consider charging your device."
    fi

    sleep 10  # Sleep for 2 minutes (adjust as needed)


done > /dev/null 2>&1 &

