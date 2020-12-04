#!/bin/bash
sudo modprobe slcan vcan can
sudo slcand -o -c -f -s6 /dev/ttyUSB$1 can$1
sudo ip link set can$1 up
 
