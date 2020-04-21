#!/bin/bash

BG_DIR="$HOME/.config/openbox/sfondi/"
HEAD1="default"

if [ -f "$BG_DIR/$HOSTNAME" ]; then
    HEAD1="$HOSTNAME"
fi

# Pick a wallpaper for desktop 0!
HEAD0="$HEAD1"

nitrogen --head=0 --set-zoom "$BG_DIR/$HEAD0"
nitrogen --head=1 --set-zoom "$BG_DIR/$HEAD1"
