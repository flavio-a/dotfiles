
#! /bin/bash

if ! [ -x "$(command -v xscreensaver-command)" ]; then
        xflock4
else
        xscreensaver-command -lock
fi
		
