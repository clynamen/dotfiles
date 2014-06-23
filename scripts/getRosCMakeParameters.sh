#!/bin/bash

#!/bin/bash

rosVersion=groovy

for pack in $(pacman -Qss ros-$rosVersion | grep local | awk ' { print $1 } ' | sed 's|local/||g'); do
  rosPackName=$(echo $pack | sed 's/ros-groovy-//g' | sed 's/-/_/g')
  cmakeDir=$(pacman -Ql $pack | grep -e '/cmake/$' | awk ' { print $2 } ')
  echo "-D${rosPackName}_DIR=$cmakeDir"
done


