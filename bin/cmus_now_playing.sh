#!/bin/bash
 
status=$(cmus-remote -Q)

artist=$(grep "tag artist" <<< $status)
artist=${artist//"tag artist "/}

title=$(grep "tag title" <<< $status)
title=${title//"tag title "/}

num=$(grep "tag tracknumber" <<< $status)
num=${num//"tag tracknumber "/}

playing=$(grep "status" <<< $status)
playing=${playing//"status "/}


#if [ "$playing" = "playing" ]; then
    #playing="

str="($playing) $artist - $title"
echo $str
