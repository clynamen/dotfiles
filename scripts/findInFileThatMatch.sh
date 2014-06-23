#!/bin/bash

if [[ "$#" -ne 2 ]]; then
  echo "Usage:"
  echo "$0 file_regex content_regex"
  exit -1
fi

echo "Searching '$2' in files that match '$1'"

for f in $(find | grep -e "$1"); do
  grep $f -e $2 > /dev/null
  if [[ $? == 0 ]]; then
    echo 
    echo "File $f :"
    echo 
    grep $f -e $2
  fi
done
