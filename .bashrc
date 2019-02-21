# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# ignore case
bind 'set completion-ignore-case on'
# append history instead of rewriting
shopt -s histappend
# allow larger history file
HISTFILESIZE=1000000
HISTSIZE=1000000
# complete what's already typed from history
if [[ $- == *i* ]]
then
   bind '"\e[A": history-search-backward'
   bind '"\e[B": history-search-forward'
   bind '"\e[1;3D": backward-word' # alt-left
   bind '"\e[1;3C": forward-word' # alt-right
fi
