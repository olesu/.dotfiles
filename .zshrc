export PATH="/usr/local/opt/rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Override coreutils commands with the ones from brew here
alias dircolors='gdircolors'

source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle brew
antigen bundle osx
antigen bundle vi-mode
antigen bundle vim-interaction
antigen bundle mvn
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle joel-porquet/zsh-dircolors-solarized.git

antigen theme agnoster

antigen apply

# User configuration
export MAVEN_OPTS="\
    -Djava.net.preferIPv4Stack=false\
    -XX:NewSize=256m -XX:MaxNewSize=256m\
    -XX:+DisableExplicitGC\
    -XX:+UseConcMarkSweepGC\
    "
export LC_ALL=no_NO.UTF-8
export LANG=no_NO.UTF-8

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
