#!/bin/sh

{%@@ if profile == "marvin" -@@%}

sh ${HOME}/.config/openbox/mylayout.sh
xscreensaver &
numlockx &

{%@@ elif profile == "uz" -@@%}

xscreensaver -nosplash &
# x-terminal-emulator &

{%@@ endif -@@%}

sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu; $SHELL" &
sh ~/.config/openbox/carica_sfondo.sh
tint2 &
sh ~/.config/openbox/start-tg.sh &
