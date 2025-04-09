#!/bin/bash

# Fetch the highest core temperature from coretemp-isa-0000
max_temp=$(sensors | awk '/coretemp-isa-0000/,/^$/' | awk '/Core [0-9]+:/ {gsub(/\+/,"",$3); gsub(/°C/,"",$3); if ($3+0 > max) max=$3+0} END {print max}')

# Determine the icon based on temperature thresholds
if (( max_temp > 75 )); then
    icon="🔥"
elif (( max_temp >= 45 )); then
    icon="🌡️"
else
    icon="❄️"
fi

# Output JSON for Waybar
echo "{\"text\": \"$icon ${max_temp}°C\", \"tooltip\": \"Highest core temperature: ${max_temp}°C\", \"class\": \"temp\"}"
