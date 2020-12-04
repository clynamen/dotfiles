#!/usr/bin/env sh
# George Ornbo (shapeshed) http://shapeshed.com
# License - http://unlicense.org
#
# Fixes a corrupt .zsh_history file

mv ~/.histfile ~/.histfile_bad
strings ~/.histfile_bad > ~/.histfile
rm ~/.histfile_bad
