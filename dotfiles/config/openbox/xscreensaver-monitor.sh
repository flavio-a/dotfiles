#!/bin/sh

# Start caffeine once
caffeine &

# Kill and restart caffeine when screen is locked/unlocked
xscreensaver-command --watch | while IFS= read -r action; do
    # echo "Parsed action: ${action%% *}"
    case "${action%% *}" in
        "UNBLANK") caffeine & ;;
        "LOCK")    pkill -f caffeine-ng ;;
    esac
done
