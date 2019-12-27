#!/bin/bash


# A simple script for dot files and directories backups.
# This script sync files and directories for Emacs, Vim, (oH My)Zsh
# with a dotfile-bkp directory in your home dir.
# 
# Author: Willber Nascimento <nascimentowillber at gmail dot com>
#

EMACS_FILES="$HOME/.emacs $HOME/.emacs.d"

for file in ${EMACS_FILES}; do 
if [[ -e $file ]]; then
    mkdir -p $HOME/dotfiles-bkp/
    rsync -Cravzp $file $HOME/dotfiles-bkp/
    echo "Sync file $file"
else
   echo "The file '$file' was not found."
fi
done


ZSH_FILES="$HOME/.zshrc $HOME/.zsh_history $HOME/.oh-my-zsh"

for file in ${ZSH_FILES}; do 
if [[ -e $file ]]; then
    mkdir -p $HOME/dotfiles-bkp/
    rsync -Cravzp $file $HOME/dotfiles-bkp/
else
   echo "The file '$file' was not found."
fi
done

VIM_FILES="$HOME/.viminfo $HOME/.vimrc $HOME/.vim/"

for file in ${VIM_FILES}; do 
if [[ -e $file ]]; then
    mkdir -p $HOME/dotfiles-bkp/
    rsync -Cravzp $file $HOME/dotfiles-bkp/
    echo "Sync file $file"
else
   echo "The file '$file' was not found."
fi
done


