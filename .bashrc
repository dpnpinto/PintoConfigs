#
# ~/.bashrc
#
# If not running interactively, don't do anything
export term=kitty
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $\[\033[00m\]'
