#!/bin/bash

# script to notify when battery is low using cron, dunst.

# set threshold below which notifications will trigger
THRESHOLD=20

# debug
# set -xv

#which X display to send notification
# export DISPLAY=:0.0;

# charging || discharging etc
state=$(cat /sys/class/power_supply/BAT*/status);

# current capacity
capacity=$(cat /sys/class/power_supply/BAT*/capacity);

echo "state: $state";
echo "capacity: $capacity";

if [[ "$capacity" -le $THRESHOLD && "$state" -eq "Discharging" ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send --wait -u normal -i /usr/share/icons/HighContrast/32x32/status/battery-caution.png "low battery!";
fi
