ssht() {
    ssh -t $* "tmux a || zsh || bash" 
}

