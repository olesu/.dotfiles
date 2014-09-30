#
# XCode 5 hides these away:
export C_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export CPLUS_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export LIBRARY_PATH="$(xcrun --show-sdk-path)/usr/lib:$(xcrun --show-sdk-path)/usr/lib/system:$LIBRARY_PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

alias mvim='open -a MacVim'

export LC_ALL="no_NO.UTF-8"
export LANG=$LC_ALL

if [ -x "`whence -p brew`" ]; then
    alias ls='gls --color=auto'
    alias head='ghead' alias tail='gtail'
    alias basename='gbasename'
    alias dirname='gdirname'
fi

if [ -x "`whence -p tmux`" ]; then
    alias tmux='TERM=screen-256color-bce tmux'
fi

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles
if [ -d "/usr/local/share/npm/bin" ]; then
    PATH=/usr/local/share/npm/bin:$PATH
fi

active_if() {
    if=`route get 0.0.0.0 2>/dev/null | awk '/interface: / {print $2}'`
    case $if in 
        en3)
            echo -n "Thunderbolt Display "
            ;;
        en0)
            echo -n "Wireless "
    esac
    echo "($if)"
}

