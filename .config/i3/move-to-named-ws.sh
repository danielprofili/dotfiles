#!/bin/bash

# Script to move the currently focused window to a workspace whose
# name is chosen using rofi's dmenu mode.
# Press CTRL+Enter to use the currently entered text verbatim as a new
# workspace name, and a new correctly numbered workspace will be created.

function gen_workspaces()
{
    i3-msg -t get_workspaces | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n #| sed 's/ [0-9]/\n/g'
}

# echo -e $(gen_workspaces)
# new=" New"
# WORKSPACE=$( (echo "$new"; gen_workspaces)  | rofi -dmenu -i -p "Move to:")
WORKSPACE=$( (gen_workspaces)  | rofi -dmenu -i -p "Move to:")

# if [[ $WORKSPACE == $new ]]

# pad with spaces to make the regex work
workspaces=" $(gen_workspaces) "

# debugging purposes
# echo chosen item: $WORKSPACE
# echo -e all workspaces: $workspaces
# end debugging

# regex check: determine if typed name is an actual workspace or a new name
if [[ -n $WORKSPACE && ! $workspaces =~ .*[[:space:]]$WORKSPACE[[:space:]].* ]]
then
    # new workspace name typed
    # call the empty workspace script, which returns only the new
    # number if any command line argument is given
    newnum=$(~/.config/i3/empty_workspace.sh kasjdf)
    # echo $newnum
    # NEWNAME="`zenity --entry --text 'New workspace name: '`"
    # if [[ -n "${NEWNAME}" ]]
    # then
    #     WORKSPACE=$newnum:$NEWNAME
    # fi
    WORKSPACE=$newnum:$WORKSPACE

    # DEBUG
    echo creating new workspace $WORKSPACE
    # zenity --info --text=$WORKSPACE
    # DEBUG
fi

# only switch if something was chosen/typed
if [[ -n "${WORKSPACE}" ]]
then
    # DEBUG
    echo moving window to workspace number $WORKSPACE
    # DEBUG

    i3-msg move window to workspace number "${WORKSPACE}"
else
    echo chosen nothing and aborting
fi
