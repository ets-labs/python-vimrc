#!/usr/bin/env bash

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

ORG_NAME="ets-labs"
REPO_NAME="python-vimrc"
INIT_BASH_PATH="https://raw.githubusercontent.com/${ORG_NAME}/${REPO_NAME}/master/init.sh"
VIMRC_URL="https://github.com/${ORG_NAME}/${REPO_NAME}.git"
VUNDLE_URL="https://github.com/VundleVim/Vundle.vim.git"
WOMBAT256MOD_URL="http://www.vim.org/scripts/download_script.php?src_id=13400"
UPDATE_INTERVAL_DAYS=7

if [ ! -n "${VIM}" ]; then
    VIM=~/.vim
fi

HELLO_TEXT=$(cat <<HEREDOC

                              iiii
                             i::::i
                              iiii

    vvvvvvv           vvvvvvviiiiiii    mmmmmmm    mmmmmmm   rrrrr   rrrrrrrrr       cccccccccccccccc
     v:::::v         v:::::v i:::::i  mm:::::::m  m:::::::mm r::::rrr:::::::::r    cc:::::::::::::::c
      v:::::v       v:::::v   i::::i m::::::::::mm::::::::::mr:::::::::::::::::r  c:::::::::::::::::c
       v:::::v     v:::::v    i::::i m::::::::::::::::::::::mrr::::::rrrrr::::::rc:::::::cccccc:::::c
        v:::::v   v:::::v     i::::i m:::::mmm::::::mmm:::::m r:::::r     r:::::rc::::::c     ccccccc
         v:::::v v:::::v      i::::i m::::m   m::::m   m::::m r:::::r     rrrrrrrc:::::c
          v:::::v:::::v       i::::i m::::m   m::::m   m::::m r:::::r            c:::::c
           v:::::::::v        i::::i m::::m   m::::m   m::::m r:::::r            c::::::c     ccccccc
            v:::::::v        i::::::im::::m   m::::m   m::::m r:::::r            c:::::::cccccc:::::c
             v:::::v         i::::::im::::m   m::::m   m::::m r:::::r             c:::::::::::::::::c
              v:::v          i::::::im::::m   m::::m   m::::m r:::::r              cc:::::::::::::::c
               vvv           iiiiiiiimmmmmm   mmmmmm   mmmmmm rrrrrrr                cccccccccccccccc

HEREDOC
)

is_git_exists() {
    hash git >/dev/null 2>&1
}

install() {
    printf "${BLUE}%s${NORMAL}\n\n" "${HELLO_TEXT}"

    is_git_exists || {
        printf "${RED}%s${NORMAL}\n" "Error: git is not installed."
        exit 1
    }

    if [ -d "${VIM}" ]; then
        printf "${YELLOW}%s${NORMAL}\n" "You already have ${VIM} directory."
        printf "${YELLOW}%s${NORMAL}\n" "You have to remove ${VIM} if you want to re-install."
        exit 0
    fi

    # Prevent the cloned repository from having insecure permissions. Failing to do
    # so causes compinit() calls to fail with "command not found: compdef" errors
    # for users with insecure umasks (e.g., "002", allowing group writability). Note
    # that this will be ignored under Cygwin by default, as Windows ACLs take
    # precedence over umasks except for filesystems mounted with option "noacl".
    umask g-w,o-w

    printf "${GREEN}%s${NORMAL}\n" "Cloning vimrc from ${VIMRC_URL}"
    env git clone --depth=1 ${VIMRC_URL} ${VIM} || {
        printf "${RED}%s${NORMAL}\n" "Error: git clone of vimrc repo failed."
        exit 1
    }

    printf "${BLUE}%s${NORMAL}\n" "Looking for an existing vim config..."
    if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
        printf "${YELLOW}%s${NORMAL}\n" "Found ~/.vimrc."
        printf "${BLUE}%s${NORMAL}\n" "You will see your old ~/.vimrc as ${VIM}/vimrc.bak"
        mv ~/.vimrc ${VIM}/vimrc.bak
    fi

    printf "${BLUE}%s${NORMAL}\n" "Symlinking ${VIM}/vimrc with ~/.vimrc..."
    ln -fs ${VIM}/vimrc ~/.vimrc

    if [ ! -d "$VIM/bundle/Vundle.vim" ]; then
        printf "${BLUE}%s${NORMAL}\n" "Installing Vundle..."
        env git clone --depth=1 ${VUNDLE_URL} "${VIM}/bundle/Vundle.vim"
    fi

    if [ ! -f ${VIM}/colors/wombat256mod.vim ]; then
        if [ ! -d ${VIM}/colors/ ]; then
            mkdir -p ${VIM}/colors
        fi
        wget ${WOMBAT256MOD_URL} -O ${VIM}/colors/wombat256mod.vim
    fi

    printf "${GREEN}%s${NORMAL}\n" "Vimrc has been configured ;)"
    printf "${YELLOW}%s${NORMAL}\n" "Do not worry about error messages. When it occurs just press enter and wait till all plugins are installed."
    printf "${BLUE}%s${NORMAL}\n" "Keep calm and use VIM!"

    vim +PluginInstall
}

help() {
    printf "${BLUE}%s${NORMAL}\n\n" "${HELLO_TEXT}"
    cat <<HEREDOC
    SYNOPSIS
        bash -c "\$(curl -fsSL ${INIT_BASH_PATH})" [install|help]

HEREDOC
}

case "${0}" in
    "install")
        install
        ;;
    "help")
        help
        ;;
esac
