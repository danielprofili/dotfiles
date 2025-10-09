#!/bin/bash
disp=$(cat tablet)
xsetwacom --set "HUION Huion Tablet stylus" MapToOutput HEAD-$disp
