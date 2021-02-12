#!/bin/sh

sh ${HOME}/.config/openbox/mylayout.sh
numlockx &
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu; $SHELL" &
xscreensaver &
sh ~/.config/openbox/carica_sfondo.sh
tint2 &
sh ~/.config/openbox/start-tg.sh &
