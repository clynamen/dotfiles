#!/bin/bash

###############################################
exit
###############################################

threshold=10;
while true; do
  remaining="$(echo "$(acpi)" | awk '{print $4 $5}' | grep -oe '[0-9]*')"
  if [[ $remaining -le $threshold ]]; then
    notify-send "Battery is almost empty!"
    break
  fi
  sleep 60
done
