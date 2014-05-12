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

mvn() {
    JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk/Contents/Home"
    if [ "$1" = "-6" ]; then
        shift
        JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home";
    fi

    env JAVA_HOME="$JAVA_HOME" MAVEN_OPTS="-Xmx1024m -Xms512m -XX:MaxPermSize=256m" mvn $*
}
