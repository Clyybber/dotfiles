# History
HISTFILE=~/.zhistory
HISTSIZE=1024
SAVEHIST=1024
setopt hist_fcntl_lock
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history #Would be cool if this didnt enable EXTENDED_HISTORY

# No idea
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

#Kakoune as default editor
export EDITOR=kak

. ~/torch/install/bin/torch-activate
export PATH="$HOME/.dynamic-colors/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/builds/nim/bin:$PATH"
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh
#Aliases and functions:
#Git for dotfiles
alias config='git --git-dir=/home/clyybber/.dotfiles/ --work-tree=/home/clyybber'
#Switching bspwm presets
alias appear-productive='. "$HOME/shscripts/wmcnfg_productive.sh"; sed -i "s/wmcnfg_eyecandy/wmcnfg_productive/" "$HOME/.config/bspwm/bspwmrc"'
alias appear-eyecandy='. "$HOME/shscripts/wmcnfg_eyecandy.sh"; sed -i "s/wmcnfg_productive/wmcnfg_eyecandy/" "$HOME/.config/bspwm/bspwmrc"'
#Animated wallpaper #TODO suppress nohup output completely
alias appear-wallpaper='setsid xwinwrap -ov -fs -ni -nf -- mpv --no-config --loop --panscan=1.0 --no-audio --no-sub --hwdec=auto --really-quiet -wid WID'

