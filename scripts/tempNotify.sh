#!/bin/bash

maxTemp=93

while true; do
  temp=$(sensors | grep Physical | awk '{ print $4 }')
  temp=${temp//[^1-9]/}
  if [[ $temp -ge $maxTemp ]]; then
    notify-send "Reached max temp!!! temp is $temp"
    sleep 10
    continue
  fi
  sleep 1
done
