#!/bin/bash
# vim:fdm=marker:
#       _       _    __ _ _
#    __| | ___ | |_ / _(_) | ___  ___
#   / _` |/ _ \| __| |_| | |/ _ \/ __|
#  | (_| | (_) | |_|  _| | |  __/\__ \
#   \__,_|\___/ \__|_| |_|_|\___||___/
#  (_)_ __  ___| |_ __ _| | |  ___| |__
#  | | '_ \/ __| __/ _` | | | / __| '_ \
#  | | | | \__ \ || (_| | | |_\__ \ | | |
#  |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
#
# Author:         Fontaine Cook
# Description:    Dotfiles installation script.
# ------------------------------------------------------------------------------

# CLONE DOTFILES {{{
clear
cd ~
if [-d "~/.dotfiles"]; then
	rm -rf .dotfiles
fi

git clone https://github.com/itaine/dotfiles.git .dotfiles
echo -e "\nCloned dotfiles successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK DOTFILES {{{
cd ~
rm .vimrc.local
ln -sf .dotfiles/vimrc.local .vimrc.local

rm .jshintrc.local
ln -sf .dotfiles/jshintrc.local .jshintrc.local

rm .zshrc.local
ln -sf .dotfiles/zshrc.local .zshrc.local

rm .gitconfig
ln -sf .dotfiles/gitconfig .gitconfig

rm .tmux.conf
ln -sf .dotfiles/tmux.conf .tmux.conf


echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
# WRAP UP {{{
#------------------------------------------------------------------------------
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
# }}}
