#!/bin/sh
# Pick the right program to lock the screen

if ! [ -x "$(command -v xscreensaver-command)" ]; then
        xflock4
else
        xscreensaver-command --lock
fi
