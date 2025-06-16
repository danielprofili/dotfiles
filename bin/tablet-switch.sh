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

xsetwacom --set "HUION Huion Tablet Pen stylus" MapToOutput HEAD-$disp
