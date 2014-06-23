#!/bin/bash

stdQt=$(cat <<HEREDOC
-I/usr/include/qt4/Qt
-I/usr/include/qt4/QtGui
HEREDOC)

content=""

if [[ $# == 1 ]]; then
  echo "Creating $1 configuration file..."
  if [[ $1 == "stdQt" ]]; then
    content=$stdQt
  fi

  echo $content > .clang_complete
  echo "Done."
else
  echo "Usage:"
  echo "$0 {stdQt}"
fi
