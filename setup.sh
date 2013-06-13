#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Commence installation of config files
ln -s $DIR/.bashrc_additions ~/.bash_aliases
ln -s $DIR/.git_aliases ~/.git_aliases
ln -s $DIR/solarized_dircolors.ansi-dark ~/.dircolors
ln -s $DIR/.tmux.conf ~/.tmux.conf
ln -s $DIR/.git_bash_prompt ~/.git_bash_prompt
ln -s $DIR/.bash_profile_additions ~/.bash_profile_additions

# Set solarized colors for gnome-terminal
source $DIR/solarize_terminal.sh

# This would patch the ctrlp plugin in the VimConf
# if [ -d "$HOME/VimConf/.vim/bundle/ctrlp" ]; then
#     cd $HOME/VimConf/.vim/bundle/ctrlp
#     patch -p0 < $DIR/ctrlp_remap.diff
#     cd -
# fi

unset DIR
