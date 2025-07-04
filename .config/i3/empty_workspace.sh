#!/bin/bash

# Simple script to create a new empty workspace with an appropriate
# number.

# todo: use the smallest available number instead of one larger than
# the max number currently in use

# list of numbers currently in use
used=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn)
maxnum=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) 
maxnum=$((maxnum + 1))
for i in $(seq 1 $maxnum);
do
    echo $used | grep -w -q $i
    if [ $? -eq 1 ]; then
        num=$i
        break
    fi
done
# echo $i
# exit 0


# necessary if you have non-numbered "pinned" workspaces
if [ "$num" -eq "-1" ]; then
    num=0
fi


# newnum=$(($num + 1))

# new behavior for use with the move-to-named-ws script
if [[ -n $1 ]]
then
    # any arg: echo the new number and quit
    echo $num
else
    # Creates a new empty workspace
    # no args: regular behavior
    i3-msg workspace $num
fi
