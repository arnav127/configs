#!/bin/bash
# Script to choose config file to edit

TERMINAL="konsole"
EDITOR="emacs"
declare -A config

# add config files here
config[vim]=~/.vimrc
config[i3]=~/.config/i3/config
config[alacritty]=~/.config/alacritty/alacritty.yml
config[picom]=~/.config/picom/picom.conf
config[polybar]=~/.config/polybar/config.ini
config[conf_edit]=~/.config/conf_edit.sh
config[rofi]=~/.config/rofi/config.rasi
config[konsole]=~/.config/konsolerc
config[dunst]=~/.config/dunst/dunstrc

choice=$(printf "%s\n" "${!config[@]}" | sort | rofi -dmenu -i -p "Config" -auto-select | cut -f 1)

if [ -n "$choice" ]; 
    then $EDITOR ${config[$choice]}
#    then $TERMINAL -e $EDITOR ${config[$choice]}
fi

