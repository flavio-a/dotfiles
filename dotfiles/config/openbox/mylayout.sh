#!/bin/sh
# xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x312 --output DP-1 --mode 1920x1080 --pos 1366x0 --output HDMI-1 --off
# xrandr --output eDP-1-1 --primary --mode 1366x768 --pos 0x312 --output DP-1-1 --mode 1920x1080 --pos 1366x0 --output HDMI-1-1 --off
xrandr --output eDP1 --primary --mode 1366x768 --pos 0x312 --rotate normal --output DP1 --mode 1920x1080 --pos 1366x0 --rotate normal --output HDMI1 --off --output VIRTUAL1 --off
