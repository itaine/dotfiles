#!/bin/bash
# vim:fdm=marker:

# CLONE DOTFILES {{{
git clone https://github.com/itaine/dotfiles.git ~/.dotfiles
echo -e "\nCloned zshtopia successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK TO CONFIGURATION FILES {{{
cd ~
ln -sf ~/.vimrc.local ~/.dotfiles/vim.local/.vimrc.local
ln -sf ~/.jshintrc.local ~/.dotfiles/vim.local/.jshintrc.local

ln -sf ~/.tmux.conf.local ~/.dotfiles/zsh.local/.tmux.conf.local
ln -sf ~/.zshrc.local ~/.dotfiles/zsh.local/.zshrc.local
echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
