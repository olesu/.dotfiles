export PATH="/usr/local/opt/rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Override coreutils commands with the ones from brew here
[[ -x $(whence gdircolors) ]] && alias dircolors='gdircolors'
[[ -x $(whence gls) ]] && alias gls='gls --color=auto'

source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle brew
antigen bundle osx
antigen bundle vi-mode
antigen bundle vim-interaction
antigen bundle mvn
antigen bundle command-not-found

antigen theme agnoster

antigen apply

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
rm -f ~/.zcompdump; compinit
chmod go-w '/usr/local/share'
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

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

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

###
#
###
vim() {
    env -u GIT_DIR -u GIT_WORK_TREE vim $*
}

mvim() {
    env -u GIT_DIR -u GIT_WORK_TREE vim $*
}

