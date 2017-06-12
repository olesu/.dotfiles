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
antigen bundle autojump
antigen bundle supercrabtree/k

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
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source "${HOME}/.my-shell.zsh"

