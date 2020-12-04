#!/bin/bash
ros_packages=$(pacman -Qss ros-melodic- | grep -Po 'ros-.*-.* ' | tr '\n' ' ')
sudo pacman -R $ros_packages
