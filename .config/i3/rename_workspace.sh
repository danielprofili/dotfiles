#!/bin/bash

# Open a prompt to rename the current workspace, preserving the number.
WSNUMBER=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2 | cut -d ":" -f1)
NEWNAME="`zenity --entry --text 'Rename workspace to: '`"
if [[ ! "${NEWNAME}" =~ ^[0-9]+: && -n $NEWNAME ]] ; then
        NEWNAME="${WSNUMBER}:${NEWNAME}"
fi
i3-msg "rename workspace to \"${NEWNAME}\""
