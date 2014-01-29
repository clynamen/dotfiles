# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
autoload -U compinit promptinit
compinit
promptinit

zmodload zsh/mathfunc

setopt GLOB
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_APPEND
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt NO_HIST_BEEP
setopt NO_BEEP
setopt NO_HUP

# keybindings (defined AFTER scripts):
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
bindkey "^[[2~" overwrite-mode
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-search
bindkey "^[[6~" down-line-or-search
bindkey "^[[1~" beginning-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[8~" end-of-line
bindkey "^?" backward-delete-char
bindkey '^R' history-incremental-search-backward
bindkey "^[q" push-line

# End of lines configured by zsh-newuser-install
# Code highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Start tmux by default
if [ "$TMUX" = "" ]; then tmux; fi
