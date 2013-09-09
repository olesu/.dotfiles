ssht() {
    TERM=screen ssh $* -t tmux a || zsh || bash
}

