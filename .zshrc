# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# For wal colours
(cat ~/.cache/wal/sequences &)
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/clyybber/.zshrc'

PROMPT="%F{green}%~%f >"

autoload -Uz compinit
compinit
# End of lines added by compinstall

. ~/torch/install/bin/torch-activate
export PATH="$HOME/.dynamic-colors/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh
alias config='git --git-dir=/home/clyybber/.dotfiles/ --work-tree=/home/clyybber'
