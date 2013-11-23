ssht() {
    ssh -t $* "tmux a || zsh || bash" 
}

no_sleep() {
    pmset noidle
}

add_npm_bin_to_path () {
    npm=`whence -p npm`

    if [ -x "$npm" ]; then
        npmbin=`$npm -g bin 2>/dev/null`
        export PATH=$PATH:$npmbin
    fi
}


