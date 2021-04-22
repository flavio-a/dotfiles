#!/bin/bash

pkill -f caffeine-ng
if ! [ -x "$(command -v xscreensaver-command)" ]; then
        xflock4
else
        xscreensaver-command -lock
fi
