#!/bin/bash

# Simple script to create a new empty workspace with an appropriate
# number.

# todo: use the smallest available number instead of one larger than
# the max number currently in use

# some nonsense that gets the workspace number we want
contains () { [[ "$1" =~ (^|[[:space:]])"$2"($|[[:space:]]) ]]; }

maxnum=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1)
nums=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -n)
# echo " $nums "
#echo $nums

done=0
num=0
for (( i=1; i<=$maxnum; i++ )) 
do
    # echo i=$i
    # result=$(contains $nums $i)
    result=$(echo $nums | grep -w $i)
    if [ $? -eq 1 ]; then
        num=$i
        #echo found $num
        break
    fi
    # if [ ! result ]; then
    #     echo found i=$i
    # fi
    # if [ "$done" == 0 ]; then
    #     for ws in $nums
    #     do
    #         # echo $i
    #         echo ws=$ws
    #         if  [ ! $i -eq $ws ]; then
    #             echo done at i=$i
    #             done=1
    #             break
    #         fi
    #     done
    # else
    #     break
    # fi
done

# temporary
if [ $num -eq 0 ]; then
    # newnum=$maxnum
    let newnum=$maxnum+1
else
    newnum=$num
fi

# num=$i
# necessary if you have non-numbered "pinned" workspaces
if [ "$num" -eq "-1" ]; then
    num=0
fi


# newnum=$(($num + 1))
# newnum=$num

# new behavior for use with the move-to-named-ws script
if [[ -n $1 ]]
then
    # any arg: echo the new number and quit
    echo $newnum
else
    # Creates a new empty workspace
    # no args: regular behavior
    i3-msg workspace $newnum
    # echo test
fi
