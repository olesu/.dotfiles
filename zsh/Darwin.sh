#
# XCode 5 hides these away:
export C_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export CPLUS_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export LIBRARY_PATH="$(xcrun --show-sdk-path)/usr/lib:$(xcrun --show-sdk-path)/usr/lib/system:$LIBRARY_PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

alias mvim='open -a MacVim'

export LC_ALL="no_NO.UTF-8"
export LANG="no_NO.UTF-8"

if [ -x /usr/local/bin/brew ]; then
    alias ls='gls --color=auto'
    alias head='ghead'
    alias tail='gtail'
    alias basename='gbasename'
    alias dirname='gdirname'
fi
