#!/bin/bash
alias ls="ls -hG"
#alias ls="ls -h --color
alias ll='ls -alF'
#alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'
#alias l='ls -C'
alias lla='ls -lA'
alias grep='grep --color'
alias less='less -i'

alias ta='type -a'
alias delpyc='find . -name \*.pyc | xargs rm'
alias ugrep='grep -Irn --color=auto --exclude=*.svn* --exclude-dir=CVS' 
alias tmuxes='tmux list-sessions'

prettyjson() {
	echo "$1" | python -mjson.tool
}

# Apache shortcuts
alias hstop='sudo /etc/init.d/httpd stop'
alias hstart='sudo /etc/init.d/httpd start'
alias hrestart='sudo /etc/init.d/httpd restart'
alias mrestart='sudo /etc/init.d/mysqld restart'
alias brestart='hrestart; mrestart'
