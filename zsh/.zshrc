##########
# Basics #
##########

# completion
autoload -Uz compinit
compinit

# auto cd
setopt  autocd autopushd

# git branch
autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST

# path
PATH=$PATH:~/.local/bin:/usr/local/go/bin

##########
# Prompt #
##########
NEWLINE=$'\n'
[[ "$TERM" != "xterm-256color" ]] && export TERM=xterm-256color
PROMPT='${NEWLINE}%B%F{166}%n@%M%f %F{136}%~%f %F{160}${vcs_info_msg_0_}%f%b${NEWLINE}$ '

#########
# Alias #
#########

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -la'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias v='vim'
alias g='git'
alias c='code'
alias ubuntu="docker run -it ubuntu /bin/bash"
alias d='docker'
alias docker='sudo docker'
alias s='ssh'
alias t='tmux'
alias k='kubectl'
alias ktx='kubectx'
alias kns='kubens'
alias mysql='mysql --protocol=TCP'
alias m='mysql'
alias i='curl https://ipinfo.io/ip; echo'
###########
# Plugins #
###########

# Check if .zsh-plugins folder exists and create it if it does not
if [ ! -d "${HOME}/.zsh-plugins" ]; then
    mkdir ~/.zsh-plugins
fi


if [ ! -f "${HOME}/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting
fi

source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# to manage config changes across different machines
if [ -f "${HOME}/.vimrc_local" ]; then
  source ~/.vimrc_local
fi
if [ -f "${HOME}/.zshrc_local" ]; then
  source ~/.zshrc_local
fi

# MacOS paths for using GNU programs as default
# https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332
if [[ "$(uname)" == "Darwin" ]]; then
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
    PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
    PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
    export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/
    PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
    PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
if [ -f "${HOME}/.assume-role.sh" ]; then; source ${HOME}/.assume-role.sh; fi

# GPG
export GPG_TTY=$(tty)

