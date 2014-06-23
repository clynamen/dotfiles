#!/bin/bash

echo "Connect the sixaxis"
read a
#sudo systemctl start bluetooth
sudo sixpair

if [[ $? == 0 ]]; then
  echo "Connected. Remove the sixpair from the usb"
elif 
  echo "Failed..."
fi

