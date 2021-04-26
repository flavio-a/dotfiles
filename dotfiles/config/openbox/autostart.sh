#!/bin/sh

autorandr --change
tint2 &
numlockx &
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu" &
sh ~/.config/openbox/start-tg.sh &
xscreensaver &
caffeine &
