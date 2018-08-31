#!/usr/bin/bash

sudo modprobe slcan vcan can

sudo slcand -o -c -f -s6 /dev/ttyUSB* can0
sudo ip link set can0 up
