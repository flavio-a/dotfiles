#!/bin/sh
{%@@ if profile == "marvin" -@@%}

${HOME}/.config/openbox/mylayout.sh
sh ${HOME}/.config/Xenv/xinitrc
uxterm -e "byobu; $SHELL" &

{%@@ elif profile == "uz" -@@%}

x-terminal-emulator &

{%@@ endif -@@%}

~/.config/openbox/carica_sfondo.sh &
tint2 &
telegram-desktop &
