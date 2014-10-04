alias reload!='. ~/.zshrc'
alias mkdirTodayDate='mkdir $(date  +%d-%m-%y)'

alias ls='ls --color=auto' 
alias lsl='ls -l --color=auto' 
alias lso='ls -1 --color=auto' 
alias lsr='ls -R --color=auto' 
alias lsByDate='ruby /home/clynamen/.scripts/sortByDate.rb'

alias joinLines="tr '\n' ' '" 

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

# --- other stuff
alias disableTouchpad="synclient TouchpadOff=1"

localAliasesFile=~/.aliasesLocal.sh
if [[ -e $localAliasesFile ]]; then
 source $localAliasesFile
fi

