#!/bin/bash
cur=$(setxkbmap -print | grep -oe '+[a-zA-Z]\{2\}+' | sed s/+//g)
if [[ $cur == 'us' ]]; then
  setxkbmap it
else
  setxkbmap us
fi
