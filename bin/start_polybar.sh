killall -q polybar
# Start primary monitor bars first so that it gets the tray
primary=$(polybar --list-monitors | grep "primary" | cut -d ":" -f1)
MONITOR=$primary polybar --reload topbar-primary &
# MONITOR=$primary polybar --reload wsbar-primary &
# Start bars on non primary monitors
for m in $(polybar --list-monitors | grep -v "primary" | cut -d ":" -f1); do
    MONITOR=$m polybar --reload topbar &
    # MONITOR=$m polybar --reload wsbar &
done

#!/bin/bash
# polybar -r topbar
# polybar -r wsbar
