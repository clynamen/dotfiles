libs=""
libs="$libs $(find /opt/ros -iname '*.so')" 
libs="$libs $(find /usr/lib -iname '*.so')"
for lib in $libs; do
  lddtree $lib | grep 1.68.0 > /dev/null
  if [[ $? == 0 ]]; then
    echo $lib
  fi
done
