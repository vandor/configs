#!/bin/bash

#TODO: Make this script idempotent

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_linkfiles () {
	# Get filenames
	local_path="$DIR/$1"
	home_path="$HOME/${2:-$1}"

	# Backup existing file
	if [ -e $home_path ]; then
		bak_path=$home_path.bak
		i=2
		while [ -e $bak_path ]; do
			bak_path=$home_path.bak$i
			let i+=1
		done
		mv $home_path $bak_path
	fi

	# Create link
	ln -s $local_path $home_path
}

## Commence installation of config files
_linkfiles .bash_aliases
_linkfiles .git_aliases
_linkfiles .git_bash_prompt
_linkfiles .gitconfig
_linkfiles solarized_dircolors.ansi-dark .dircolors
_linkfiles .tmux.conf

# TODO: Make these idempotent
cat $DIR/.bash_profile_additions >> $HOME/.bash_profile
cat $DIR/.bashrc_additions >> $HOME/.bashrc

# Set solarized colors for gnome-terminal
# source $DIR/solarize_gnome_terminal.sh

unset DIR
unset -f _linkfiles
