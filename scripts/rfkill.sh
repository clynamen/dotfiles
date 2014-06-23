#!/bin/bash
rfkill unblock 0
rfkill unblock 1
ip link set wlan0 up
wpa_supplicant -i wlan0 -c /etc/wpa_supplicant.conf &
dhcpcd wlan0
