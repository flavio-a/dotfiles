#!/bin/bash

KFLAG=false

while getopts "kh" o; do
    case "${o}" in
        h)
            echo "usage: lock-screen.sh [-hk]

Locks screen using the right program

    -h shows this help and quits
    -k kills caffeine before locking the screen
"
            exit 0
            ;;
        k)
            KFLAG=true
            ;;
    esac
done
shift $((OPTIND-1))

if [[ $KFLAG == true ]]; then
    pkill -f caffeine-ng
fi
if ! [ -x "$(command -v xscreensaver-command)" ]; then
        xflock4
else
        xscreensaver-command -lock
fi
