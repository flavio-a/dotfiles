#!/bin/sh

# Start caffeine once
caffeine &

# Kill and restart caffeine when screen is locked/unlocked
xscreensaver-command --watch | while IFS= read -r action; do
    case "${action%% *}" in
        "UNBLANK") caffeine & ;;
        "BLANK")   pkill -f caffeine-ng ;;
        "LOCK")    pkill -f caffeine-ng ;;
    esac
done
