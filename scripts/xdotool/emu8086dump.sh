#!/bin/bash

###############################################################################
### Find all the window listed in emuWindows and saves/loads their geometry ###
###                                                                         ###
### note: Check saved geometry values, WM and virtual desktop may           ###
### create some offsets                                                     ###
###############################################################################

# Strangely xdotool seems to report doubled value on read for x and y
enableDivideByTwo=true


emuWindows=("emulator:" "emu8086 - assembler" "emulator screen" "original source code" "edit:")
#emuWindows=("emulator: " "emu8086 - assembler" "original source code")

search_window() {
  xdotool search --name "$@"
}

set_window_geometry_by_name () {
  echo "Setting window with name '$1': "
  windowId=$(search_window "$1")
  echo "Id: $windowId"
  set_window_geometry_by_id $windowId $2 $3 $4 $5
}

set_window_geometry_by_id() {
  echo "Setting window '$windowId': "
  x=$2
  y=$3
  if [[ enableDivideByTwo ]]; then
    echo "Dividing by two"
    x=$(($x / 2))
    y=$(($y / 2))
  fi
  echo "Origin: ($x, $y)"
  echo "Size: ($4, $5)"
  xdotool windowmove $1 $x $y 
  xdotool windowsize $1 $4 $5 
}

dump_window_geometry() {
  dumpFileName=$1
  windowName="$2"
  windowId=$(search_window "$windowName")
  if [[ -n "$windowId" ]]; then
    echo "window with name '$windowName' found"
    echo "id is $windowId"
    echo WINDOW_NAME="'$windowName'" > "$dumpFileName"
    xdotool getwindowgeometry --shell $windowId >> "$dumpFileName"
    echo '' >> "$dumpFileName"
  else
    echo "$windowName not found, skipping..."
  fi 
}

load_window_geometry() {
  dumpFileName=$1
  echo "Loading from $dumpFileName..."
  . "$dumpFileName"
  set_window_geometry_by_name "$WINDOW_NAME" $X $Y $WIDTH $HEIGHT
}

show_usage() {
  echo "$0 {save|load} {dirname}"
  exit -1
}

action=$1
dumpDirName=$2


if [[ -z "$dumpDirName" ]]; then 
  echo "missing directory name"
  show_usage 
fi

case $action in 
  save)
    rm -rf $dumpDirName
    mkdir $dumpDirName
    cd $dumpDirName
    for winName in "${emuWindows[@]}"; do
      dumpFileName="$winName.txt"
      dump_window_geometry "$dumpFileName" "$winName"
    done
  ;;
  load)
    cd $dumpDirName
    for dumpFileName in *.txt; do
      echo -e "\n \n $dumpFileName \n \n"
      load_window_geometry "$dumpFileName"
    done
    echo "Loading..."
  ;;
  *)
    show_usage
  ;;
esac
    

