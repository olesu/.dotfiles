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
    local version

    case "$1" in 
        "-6")
            version='1.6'
            shift
            ;;
        "-7")
            version='1.7'
            shift
            ;;
        *)
            version='1.8'
            ;;
    esac

    JAVA_HOME=`/usr/libexec/java_home -v ${version}`

    env JAVA_HOME="$JAVA_HOME" MAVEN_OPTS="-Xmx1024m -Xms512m -XX:MaxPermSize=256m" mvn $*
}

tm_vim() {
    local rc
    local name=${1:-editor}
    local wd=${2:-`pwd`}

    if [ "${name}" = "-h" ]; then
        echo "Usage: $0 name wd"
        echo "TODO: Need getopt"
        return 0
    fi

    if [ -z "${TMUX}" ]; then
        echo "$0: Not in a tmux session"
        return 1
    fi
    tmux new-window -n ${name} -d "cd ${wd} && vim"
    rc=$?
    if [ ${rc} -ne 0 ]; then
        echo "$0: Error creating new window"
        return ${rc}
    fi
    echo "$0: Created new window [${name}] with vim started in ${wd}"
}
