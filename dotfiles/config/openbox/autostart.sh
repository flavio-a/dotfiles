#!/bin/sh

obconfdir="${HOME}/.config/openbox"

autorandr --change --force
tint2 &
numlockx &
# xrdb ~/.config/Xenv/Xresources
uxterm -e "byobu" &
sh ${obconfdir}/start-tg.sh &
xscreensaver &
sh ${obconfdir}/xscreensaver-monitor.sh &
