#!/bin/sh

{%@@ if profile == "marvin" -@@%}

sh ${HOME}/.config/openbox/mylayout.sh
xscreensaver &
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu; $SHELL" &

{%@@ elif profile == "uz" -@@%}

x-terminal-emulator &

{%@@ endif -@@%}

sh ~/.config/openbox/carica_sfondo.sh &
tint2 &
# sh ~/.config/openbox/start-tg.sh &
