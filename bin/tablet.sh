#!/bin/bash
disp=$(cat tablet)
xsetwacom --set "HUION Huion Tablet Pen stylus" MapToOutput HEAD-$disp
