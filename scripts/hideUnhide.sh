#!/bin/bash
if [[ $1 =~ [a-zA-Z0-9] ]]; then
  mv $1 .$1
fi
