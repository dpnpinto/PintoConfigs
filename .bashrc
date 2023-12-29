#
# ~/.bashrc
#
# bash by dpnpinto@gmail.com

# The best Terminal Emu
export term=st

# [[ $- != *i* ]] && return

#Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=always'
alias tree='tree -C'
alias diff='diff --color=always'
alias ip='ip --color=always'
alias dmesg='dmesg --color=always'
alias ..='cd ..'
alias v='vim'
alias code='code-oss'

#

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

#export PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(parse_git_branch)\[\033[00m\]'
PS1='\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\w\[$(tput sgr0)\] $ (parse_git_branch)'
#PS1='\:[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(parse_git_branch)\[\033[00m\]'
#PS1="\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
#export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
