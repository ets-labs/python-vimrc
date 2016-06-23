#!/usr/bin/env bash

. init.sh

wrapper() {
    printf "${BLUE}%s${NORMAL}\n\n" "${HELLO_TEXT}"

    is_git_exists || {
        printf "${RED}%s${NORMAL}\n" "Error: git is not installed."
        exit 1
    }

    git pull --rebase --stat origin master || {
        printf "${RED}%s${NORMAL}\n" "There are an error updating. Try again later."
    }
}

wrapper
