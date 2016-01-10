#!/usr/bin/env bash

VIMHOME="$(cd "$(dirname "$0")"; pwd)/$(basename "$1")"

# Use colors, but only if connected to a terminal, and that terminal
# supports them.
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NORMAL=""
fi

printf '%s' "$GREEN"
source hellopicture
printf "\n${BLUE}%s${NORMAL}\n" "Initializing vim configuration..."

makeSimlink () {
    printf "${BLUE}%s${NORMAL}\n" "Making simlink for ~/.vimrc ..."
    ln -fs $VIMHOME/vimrc $HOME/.vimrc
}

if [ ! -f $HOME'/.vimrc' ]; then
    makeSimlink
else
    printf "${YELLOW}%s${NORMAL}\n" "You alredy have ~/.vimrc file."
    printf "${YELLOW}%s${NORMAL}" "Do you want to rewrite it? [Y/n]:"
    read line
    if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
        printf "${BLUE}%s${NORMAL}\n" "Now you can see your old ~/.vimrc as $VIMHOME/vimrc.bak"
        mv $HOME/.vimrc $VIMHOME/vimrc.bak
        makeSimlink
    else
        printf "${GREEN}%s${NORMAL}\n" "Ok. Exit."
        exit 0
    fi
fi

if [ ! -f $VIMHOME'/bundle/Vundle.vim/README.md' ]; then
    printf "${BLUE}%s${NORMAL}\n" "Installing Vundle..."
    git clone git@github.com:VundleVim/Vundle.vim.git $VIMHOME'/bundle/Vundle.vim'
fi

printf "${GREEN}%s${NORMAL}\n" "Done."
printf "${YELLOW}%s${NORMAL}" "Are you ready to execute \"vim +PluginInstall?\" [Y/n]:"
read line
if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
    printf "${RED}%s${NORMAL}\n" "When you see some error do not worry."
    printf "${RED}%s${NORMAL}\n" "Just press enter and wait till all plugins are installed."
    sleep 3
    vim +PluginInstall
else
    printf "${GREEN}%s${NORMAL}\n" "Than finish. Bye bye."
fi
