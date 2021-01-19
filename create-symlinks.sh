#!/bin/bash

################################################################################
#   Creates symlinks in user's home directory to dotfiles in this repo
#   
#   Creates backups of old dotfiles in case user didn't want to remove them
################################################################################

BACK_SUFF="backup"
DOTFILES=(".bashrc" ".vimrc" ".bash_aliases" ".gitconfig" ".tmux.conf" ".gtkwaverc")

# Create backups of all existing dot files
for i in ${DOTFILES[*]}; do
    if [ -e $HOME/$i ]; then
        echo "Creating backup of $i as $i.$BACK_SUFF"
        mv $HOME/$i $HOME/$i.$BACK_SUFF
    else
        echo "$i doesn't exist in directory $HOME, no backup made"
    fi
done

echo ""

# Create symlinks to dotfiles in this repo
for i in ${DOTFILES[*]}; do
    echo "Creating symlink $HOME/$i -> `pwd`/$i"
    ln -s `pwd`/$i $HOME/$i
done
