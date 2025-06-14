#!/bin/bash

killall -q polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload topbar &
    # MONITOR=$m polybar --reload wsbar &
  done
else
  polybar --reload topbar &
  # polybar --reload wsbar &
fi
# polybar -r topbar
# polybar -r wsbar
