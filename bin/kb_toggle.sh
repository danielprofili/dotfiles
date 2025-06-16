#!/bin/bash
# toggle the laptop keyboard 

if [ ! -f "kb_enable" ] ; then
    enabled=1
else
    enabled=`cat kb_enable`
fi

if [ $enabled == 0 ]
then
    # enable keyboard
    xinput reattach "AT Translated Set 2 keyboard" 3
    echo "enabled keyboard"
    enabled=1
else
    # disable
    xinput float "AT Translated Set 2 keyboard"
    echo "disabled keyboard"
    enabled=0
fi



#enabled=$((1-$enabled))
# and save it for next time
echo "${enabled}" > kb_enable
