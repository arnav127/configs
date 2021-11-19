#! /bin/bash

if [[ "$(playerctl status)" = "Playing" ]]; then 
    echo -n '🎵 '
    playerctl metadata xesam:artist | tr -d '\n'
    echo -n ' - '
    playerctl metadata xesam:title;
else echo -n ""; fi

