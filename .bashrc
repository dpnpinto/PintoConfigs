#
# ~/.bashrc
#
# bash by dpnpinto@gmail.com

# The best Terminal Emu
export TERM=st
export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:"

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

PS1='\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\w\[$(tput sgr0)\] $(parse_git_branch)'

