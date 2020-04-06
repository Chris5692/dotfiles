##!/bin/bash
## You will need the module upower

echo "$(cat /sys/class/power_supply/BAT0/capacity)%"
