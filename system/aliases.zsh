#!/bin/bash

alias ls='ls --color=auto' 
alias lsl='ls -l --color=auto' 
alias lso='ls -1 --color=auto' 
alias lsr='ls -R --color=auto' 

alias clear='echo "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" && clear'

alias joinLines="tr '\n' ' '" 

alias syncClipboard='xsel -o | xclip -i -selection primary; xsel -o | xclip -i -selection secondary; xsel -o | xclip -i -selection clipboard; xsel -o | xclip -i -selection buffer-cut'
alias syncXClipboard='xclip -o -selection clipboard | xsel -i'
alias showClipboard="zsh ~/.scripts/showClipboard.sh"

# -- ROS stuff 
alias fuerteSetup="source /opt/ros/fuerte/clynamen-setup.zsh"

# -- ncurses
alias nwicd='wicd-curses'
alias nweechat='weechat-curses'

alias makea="make || notify-send 'compilation result = $?'"
alias android-connect="sudo jmtpfs -o allow_other /media/gt2"
alias android-disconnect="sudo umount /media/gt2"
alias mountAllTruecrypt="sudo bash /home/clynamen/.scripts/mountAllTruecrypt.sh"

# -- executables shortcuts
alias watchfile="python2 /home/clynamen/software/executables/python/when-changed.py"
alias ytogg="bash ~/.scripts/ytogg.sh"
alias turnDS="bash ~/.scripts/turnDS.sh"
alias mountKiwi="truecrypt ~/software/kiwi/kiwiTruecrypt ~/software/kiwi/mountpoint"
alias umountKiwi="sudo kill -9 \$(lsof ~/software/kiwi/mountpoint | awk '{ print $2 }' | tr '\n' ' ' | tr 'PID' ' '); sudo truecrypt -d ~/software/kiwi/mountpoint"

# --- other stuff

alias backupEclipseStuff="bash ~/.scripts/backupEclipseStuff.sh"

source /home/clynamen/.aliasesLocal

