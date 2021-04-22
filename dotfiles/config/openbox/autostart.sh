#!/bin/sh

autorandr --change
tint2 &
numlockx &
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu" &
sh ~/.config/openbox/carica_sfondo.sh
sh ~/.config/openbox/start-tg.sh &
xscreensaver &
caffeine &
