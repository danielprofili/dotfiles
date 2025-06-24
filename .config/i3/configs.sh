#!/bin/bash

# Quickly edit various configuration files using rofi and the default editor.
#st -e vim $(find ~/.config/ -type f -name "config" | rofi -dmenu)

# Find configuration files in $XDG_HOME
configs=$(find ~/.config/ -type f -iname "config" -exec grep -Iq . {} \; -print)
i3_scripts=$(find ~/.config/i3 -type f -iname "*.sh")
i3_py_scripts=$(find ~/.config/i3 -type f -iname "*.py")
rasi=$(find ~/.config/ -type f -iname "*.rasi")
ncmpcpp=$(find ~/.config/ncmpcpp)
alacritty=$(find ~/.config/alacritty/ -type f -iname "*.toml")
picom=$(find ~/.config/ -type f -iname "picom.conf")

# Pick choice using rofi dmenu mode
choice=$(echo -e "${configs}\n${rasi}\n${alacritty}\n${picom}\n${i3_scripts}\n${i3_py_scripts}" | rofi -dmenu)

# Only open emacs if choice is nonempty
if [ -n "$choice" ]; then
    emacsclient -c "$choice"
fi
#emacsclient -c $(find ~/.config/ -type f -name "config" | rofi -dmenu)

