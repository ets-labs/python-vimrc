#!/usr/bin/env bash

. init.sh

current_epoch() {
    echo $(( $(date +%s) / 60 / 60 / 24 ))
}

last_update_vimrc() {
    echo "LAST_UPDATE=$(current_epoch)" > ${VIM}/.lastupdate
}

upgrade_vimrc() {
    . upgrade.sh
}

# Cancel upgrade if the current user doesn't have write permissions for the VIM directory.
[[ -w "${VIM}" ]] || exit 0

# Cancel upgrade if git is unavailable on the system
is_git_exists || exit 0


if [ -f ${VIM}/.lastupdate ]
then
    . ${VIM}/.lastupdate

    if [[ -z "${LAST_UPDATE}" ]]; then
        last_update_vimrc && return 0;
    fi

    EPOCH_DIFF=$(($(current_epoch) - ${LAST_UPDATE}))
    if [ ${EPOCH_DIFF} -gt ${UPDATE_INTERVAL_DAYS} ]
    then
        printf "${BLUE}%s${NORMAL}\n\n" "${HELLO_TEXT}"
        echo "${YELLOW}Would you like to check for updates? [Y/n]:${NORMAL}"
        read line
        if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
            upgrade_vimrc
        else
            last_update_vimrc
        fi
    fi
else
    last_update_vimrc
fi
