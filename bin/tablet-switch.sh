#!/bin/bash
disp=$(cat tablet)
# echo $disp
if [ $disp == 0 ]
then
    disp=1
else
    disp=0
fi
echo $disp > tablet

tname=$(xsetwacom --list | grep STYLUS  | cut -f 1 | xargs)
# echo $tname
xsetwacom --set "$tname" MapToOutput HEAD-$disp
xsetwacom --set "HUION Huion Tablet pad" button 1 "key ctrl z" 
xsetwacom --set "HUION Huion Tablet pad" button 2 "key ctrl shift r" 
xsetwacom --set "HUION Huion Tablet pad" button 3 "key ctrl shift p" 
