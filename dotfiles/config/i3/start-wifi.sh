#!/bin/bash

kind="ethernet"
available=$(nmcli -g GENERAL.TYPE,GENERAL.STATE device show | grep -A1 "$KIND" | sed -n '2~3p' | grep "20 (unavailable)")

if [ -n "$available" ]; then
    echo "wifi on"
    nmcli radio wifi on
else
    echo "wifi off"
fi
