#
# XCode 5 hides these away:
export C_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export CPLUS_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include"
export LIBRARY_PATH="$(xcrun --show-sdk-path)/usr/lib:$(xcrun --show-sdk-path)/usr/lib/system:$LIBRARY_PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

alias mvim='open -a MacVim'
alias ls='gls -G --color'

