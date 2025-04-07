#!/bin/bash

directory=~/Pictures/walls/walls-main/jackb

if [ -d "$directory" ]; then
    random_background=$(ls $directory/*.jpg | shuf -n 1)

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "eDP-1, $random_background"

fi
