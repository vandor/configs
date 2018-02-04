#!/bin/bash
alias ls="ls -hG"
alias ll='ls -al'
alias la='ls -A'
alias l='ls -C'
alias lla='ls -lA'
alias grep='grep --color'
alias less='less -i'

export EDITOR='vim'
alias ta='type -a'
alias dush='du -sh'
alias delpyc='find . -name \*.pyc | xargs rm'
alias ugrep='grep -Irn --color=auto --exclude=*.svn* --exclude-dir=CVS' 
alias tmuxes='tmux list-sessions'
alias cd-="cd -"
alias h='heroku'
alias hps='h ps'

treel() {
	treedir=${1:-.}
	tree "$treedir" | less
}
prettyjson() {
	echo "$1" | python -mjson.tool
}

vimf() {
	searchDir="${2:-.}"
	find "$searchDir" -iname "$1" -exec vim -p {} +
}

# Apache shortcuts
alias hstop='sudo /etc/init.d/httpd stop'
alias hstart='sudo /etc/init.d/httpd start'
alias hrestart='sudo /etc/init.d/httpd restart'
alias mrestart='sudo /etc/init.d/mysqld restart'
alias brestart='hrestart; mrestart'


# Tag searches
alias tags="grep -ohr \"#[^ ]*\" . | sort | uniq | tr -d '#' | tr '\n' ' '"
function tagf () {
	grep -irl \#${1} .
}
function tag () {
	tagfiles=$(tagf ${1})
	[ $(echo "$tagfiles" | wc -l) -eq 1 ] && echo "==> $tagfiles <=="
	echo "$tagfiles" | xargs head -${2:-2}
}
