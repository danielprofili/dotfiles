#!/bin/bash
function gen_workspaces()
{
    i3-msg -t get_workspaces | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n | sed 's/ [0-9]/\n/g'
}

ws=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true)') #| cut -d"\"" -f2)
output=$(echo $ws | jq '.output')
ws_same_output=$(i3-msg -t get_workspaces | jq ".[] | select(.output==${output})" | jq '.name')
ws_current=$(echo $ws | jq '.name')
# echo $ws_same_output
ws_array=()
wsnumber=$(echo $WS | cut -d: -f1)
# workspaces=$(gen_workspaces)
# echo $workspaces
# put current output workspaces into an array
for w in $ws_same_output; do WS_ARRAY+=($w); done
# echo ${WS_ARRAY[*]}

if [[ $1 == "left" ]]; then
    # swap places (workspace number) with the workspace to the left on
    # the current monitor
    swap=${WS_ARRAY[0]}
    len=$((${#WS_ARRAY[@]}-1))
    for i in $(seq 0 $len);
    do
        # echo $i
        # echo ${WS_ARRAY[i]}
        # echo $ws_current
        if [[ "${WS_ARRAY[i]}" == "$ws_current" ]]
        then
            # swap with workspace name in swap variable
            curnum=$(echo $ws_current | cut -d: -f1)
            curname=$(echo $ws_current | cut -d: -f2)
            othernum=$(echo $swap | cut -d: -f1)
            othername=$(echo $swap | cut -d: -f2)
            i3-msg "rename workspace ${ws_current} to ${othernum}:${curname}"
            i3-msg "rename workspace ${swap} to ${curnum}:${othername}"
            exit 0
        fi
        swap=${WS_ARRAY[i]}
    done
elif [[ $1 == "right" ]]; then
    # swap places (workspace number) with the workspace to the right
    # on the current monitor
    swap=${WS_ARRAY[-1]}
    # echo $swap
    len=$((${#WS_ARRAY[@]}-1))
    for i in $(seq $len -1 0);
    do
        # echo $i
        # echo ${WS_ARRAY[i]}
        # echo $ws_current
        if [[ "${WS_ARRAY[i]}" == "$ws_current" ]]
        then
            # swap with workspace name in swap variable
            curnum=$(echo $ws_current | cut -d: -f1)
            curname=$(echo $ws_current | cut -d: -f2)
            othernum=$(echo $swap | cut -d: -f1)
            othername=$(echo $swap | cut -d: -f2)
            # echo $ws_current
            # echo $swap
            i3-msg "rename workspace ${ws_current} to ${othernum}:${curname}"
            i3-msg "rename workspace ${swap} to ${curnum}:${othername}"
            exit 0
        fi
        swap=${WS_ARRAY[i]}
        # echo $swap
    done
else
    echo "either 'left' or 'right' must be specified"
fi
