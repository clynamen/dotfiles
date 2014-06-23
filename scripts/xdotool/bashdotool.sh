#!/bin/bash

set_window_geometry_by_name () {
  echo "Setting window '$1': "
  echo "Origin: ($2, $3)"
  echo "Size: ($4, $5)"
  xdotool search --name "$1"  windowmove $2 $3 windowsize $4 $5
}
