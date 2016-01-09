#!/usr/bin/env bash

VIMHOME="$(cd "$(dirname "$0")"; pwd)/$(basename "$1")"

makeSimlink () {
    echo "Making simlink for ~/.vimrc ..."
    ln -fs $VIMHOME/vimrc $HOME/.vimrc
}

if [ ! -f $HOME'/.vimrc' ]; then
    makeSimlink
else
    echo "You alredy have ~/.vimrc file."
    read -p "Do you want to rewrite it? (y)es or (n)no" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Nov you can see your old ~/.vimrc as $VIMHOME/vimrc.bak"
        mv $HOME/.vimrc $VIMHOME/vimrc.bak
        makeSimlink
    else
        echo ""
        echo "Ok. Exit."
        exit 0
    fi
    echo ""
fi

if [ ! -f $VIMHOME'/bundle/Vundle.vim/README.md' ]; then
    echo "Installing Vundle..."
    echo ""
    git clone git@github.com:VundleVim/Vundle.vim.git $VIMHOME'/bundle/Vundle.vim'
fi

vim +PluginInstall
