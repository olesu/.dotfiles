#!/usr/local/bin/zsh
#
whence tmux > /dev/null 2>&1
if [ $? -eq 0 -a -z "$TMUX" ]; then
    export TERM=screen-256color-bce
    tmux has-session -t default > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        tmux -u new-session -s default -n console -d
    fi

    tmux attach-session -t default
fi


