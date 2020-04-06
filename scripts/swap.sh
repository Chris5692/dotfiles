free -h | awk '/^Swap:/ { print  "Swap: " $3 "/" $2}'
