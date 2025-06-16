#!/bin/bash

# Simple script to create a new empty workspace with an appropriate
# number.

# todo: use the smallest available number instead of one larger than
# the max number currently in use

# some nonsense that gets the workspace number we want
num=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1)

# necessary if you have non-numbered "pinned" workspaces
if [ "$num" -eq "-1" ]; then
    num=0
fi


newnum=$(($num + 1))

# new behavior for use with the move-to-named-ws script
if [[ -n $1 ]]
then
    # any arg: echo the new number and quit
    echo $newnum
else
    # Creates a new empty workspace
    # no args: regular behavior
    i3-msg workspace $newnum
fi
