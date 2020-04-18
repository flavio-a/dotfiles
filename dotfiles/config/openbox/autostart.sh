#!/bin/sh
${HOME}/.config/openbox/mylayout.sh
sh ${HOME}/.config/Xenv/xinitrc
tint2 &
~/.config/openbox/carica_sfondo.sh &
# x-terminal-emulator &
uxterm -e "byobu; $SHELL" &
telegram-desktop &
