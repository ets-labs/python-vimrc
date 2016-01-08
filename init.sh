#!/usr/bin/env bash

VIMHOME=$(dirname "$0")

if [ ! -f $HOME'/.vimrc' ]; then
    ln -s $VIMHOME/.vimrc $HOME/.vimrc
else
    echo "You alredy have ~/.vimrc file."
    read -p "Do you want to rewrite it? (y)es or (n)no" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        mv $HOME/.vimrc $VIMHOME/.vimrc.bak
        ln -fs $VIMHOME/.vimrc $HOME/.vimrc
    fi
    echo ""
fi

if [ ! -f vimhome.'/bundle/Vundle.vim/README.md' ]; then
    echo "Installing Vundle..."
    echo ""
    git clone git@github.com:VundleVim/Vundle.vim.git $VIMHOME'/bundle/Vundle.vim'
fi

vim +PluginInstall
