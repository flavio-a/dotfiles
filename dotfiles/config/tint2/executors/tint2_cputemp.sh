#!/bin/bash

temp=$(sensors | grep -i "Core" | grep -i "°C" | sed -r 's/.*:\s+[\+-]?(.*)°C\s+.*/\1/' | awk '{ sum += $1 } END { if (NR > 0) print int(sum / NR) }')

printf '%s°C' "$temp"
