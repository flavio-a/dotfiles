#!/bin/bash

BG_DIR="$HOME/.config/openbox/sfondi/"

if [ -f "$BG_DIR/$HOSTNAME" ]; then
        nitrogen --head=1 --set-zoom "$BG_DIR/$HOSTNAME" &
else
        nitrogen --head=1 --set-zoom "$BG_DIR/default" &
fi
