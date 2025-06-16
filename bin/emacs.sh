#!/bin/bash
emacsclient -c "$@" 
if [ "$?" -eq 1 ]
then
    emacs --daemon
    emacsclient -c "$@"
fi



