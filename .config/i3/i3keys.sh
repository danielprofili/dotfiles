#!/bin/bash

# List i3 keybindings parsed from the i3 config file
#st -e vim $(find ~/.config/ -type f -name "config" | rofi -dmenu)

# Get bindings from i3 config file
mod=$(grep 'set $mod ' ~/.config/i3/config | cut -f3- -d" " | sed "s/Mod4/S/" | sed "s/Mod1/Alt/")
binds=$(grep '^bindsym' ~/.config/i3/config | sed "s/\$mod/${mod}/" | cut -f2- -d" ")
keys=$(echo "${binds}" | cut -f2 -d" ")
cmds=$(echo "${binds}" | cut -f3- -d" ")

# Pick choice using rofi dmenu mode
choice=$(echo -e "${binds}" | rofi -dmenu)
cmd=$(echo "${choice}" | cut -f2- -d" ")
echo $cmd

# Only open emacs if choice is nonempty
if [ -n "$choice" ]; then
    i3-msg "$cmd"
fi

