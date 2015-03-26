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
rm -r .dotfiles
git clone https://github.com/itaine/dotfiles.git ~/.dotfiles
echo -e "\nCloned dotfiles successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK DOTFILES {{{
cd ~
ln -sf ~/.dotfiles/vimrc.local ~/.vimrc.local

ln -sf ~/.dotfiles/jshintrc.local ~/.jshintrc.local

ln -sf ~/.dotfiles/zshrc.local ~/.zshrc.local

ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf


echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
# WRAP UP {{{
#------------------------------------------------------------------------------
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
zsh
# }}}
