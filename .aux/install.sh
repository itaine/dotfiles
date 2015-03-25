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
# Description:    Vimez installation script.
# ------------------------------------------------------------------------------

# CLONE DOTFILES {{{
git clone https://github.com/itaine/dotfiles.git ~/.dotfiles
echo -e "\nCloned zshtopia successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK TO CONFIGURATION FILES {{{
cd ~
ln -sf ~/.dotfiles/vimrc.local ~/.vimrc.local

ln -sf ~/.dotfiles/jshintrc.local ~/.jshintrc.local

ln -sf ~/.dotfiles/zshrc.local ~/.zshrc.local

ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf


echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
