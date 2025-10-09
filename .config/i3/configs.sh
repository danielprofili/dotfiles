#!/bin/bash

# Quickly edit various configuration files using rofi and the default editor.
#st -e vim $(find ~/.config/ -type f -name "config" | rofi -dmenu)

# Find configuration files in $XDG_HOME
configs=$(find ~/.config/i3/ -type f -iname "config" -exec grep -Iq . {} \; -print)
ini=$(find ~/.config/polybar -type f -iname "*.ini")
i3_scripts=$(find ~/.config/i3 -type f -iname "*.sh")
i3_py_scripts=$(find ~/.config/i3 -type f -iname "*.py")
rasi=$(find ~/.config/ -type f -iname "*.rasi")
toml=$(find ~/.config/alacritty/ -type f -iname "*.toml")
conf=$(find ~/.config -type f -iname "picom.conf")

# Pick choice using rofi dmenu mode
choice=$(echo -e "${configs}\n${rasi}\n${toml}\n${conf}\n${i3_scripts}\n${i3_py_scripts}\n${ini}" | rofi -dmenu)

# Only open emacs if choice is nonempty
if [ -n "$choice" ]; then
    emacsclient -c "$choice"
fi
#emacsclient -c $(find ~/.config/ -type f -name "config" | rofi -dmenu)

