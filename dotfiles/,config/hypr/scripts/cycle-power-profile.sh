#!/bin/bash

# Author: hanspeteroliver
# Quotes origin: llama 3.2

cache="$HOME/.cache/powerprofile"
mkdir -p ~/.cache

if [ -f "$cache" ]; then
  p=$(cat "$cache")
else
  p=$(powerprofilesctl get)
fi

if [ "$p" = "performance" ]; then
  n="balanced"
  icon="⚖️ Balanced"
  msgs=(
    "Engaging neutral vibes"
    "Cruising at mid-speed"
    "Middle path, Jedi style"
    "Keeping it chill and snappy"
    "Balanced like a well-tuned synth"
    "The Goldilocks zone: just right"
    "Compromise never looked so good"
    "Zen computing activated"
  )
elif [ "$p" = "balanced" ]; then
  n="power-saver"
  icon="🌱 Power Saver"
  msgs=(
    "Now entering slow-motion"
    "Eco-mode: activate"
    "Whispering like a ninja"
    "Saving electrons one byte at a time"
    "Turtle mode: enabled"
    "Leaf it to me 🌿"
    "Low power, high vibes"
    "Stealth computing: engaged"
  )
else
  n="performance"
  icon="⚡ Performance"
  msgs=(
    "Fire in the hole!"
    "Engage warp drive!"
    "Brute force enabled"
    "Melting your battery with style"
    "Performance mode: because we can"
    "Fan turbo mode: initiated"
    "Unleashing the beast"
    "CPU is now caffeinated"
  )
fi

msg=${msgs[$RANDOM % ${#msgs[@]}]}
echo "$n" > "$cache"
notify-send "$icon" "$msg"
powerprofilesctl set "$n"
