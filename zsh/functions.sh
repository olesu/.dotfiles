ssht() {
    ssh -t $* "tmux a || zsh || bash" 
}

no_sleep() {
    pmset noidle
}
