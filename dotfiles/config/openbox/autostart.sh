#!/bin/sh

sh ${HOME}/.config/openbox/mylayout.sh
tint2 &
numlockx &
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu; $SHELL" &
sh ~/.config/openbox/carica_sfondo.sh
sh ~/.config/openbox/start-tg.sh &
xscreensaver &
