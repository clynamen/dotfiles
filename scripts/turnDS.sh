#!/bin/bash

output="VGA2"
if [[ $2 == "--hdmi" ]]; then
  output="HDMI1"
fi
pos="--above"
if [[ $2 == "--left" ]]; then
  pos="--left-of"
fi

if [[ $1 == "on" ]]; then
  # this command allow to use the 1780_1050 mod
  xrandr --output $output --auto $pos LVDS1
  # this is the real setting
  xrandr --output LVDS1 --auto --pos 0x780
  xrandr --output $output --auto $pos LVDS1
  nitrogen --restore
elif [[ $1 = "reset" ]]; then
  # this command allow to use the 1780_1050 mod
  xrandr --output $output --auto $pos LVDS1
  # this is the real setting
  xrandr --output LVDS1 --auto --pos 0x780
  xrandr --output $output --auto $pos LVDS1
  nitrogen --restore
  xrandr --output $output --off
  bash .scripts/setBackground.sh
else
  xrandr --output $output --off
  bash .scripts/setBackground.sh
fi
