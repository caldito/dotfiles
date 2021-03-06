#########
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
PATH=$PATH:~/.local/bin

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

###########
# Plugins #
###########

# Check if .zsh-plugins folder exists and create it if it does not
if [ ! -d ""${HOME}"/.zsh-plugins" ]; then
    mkdir ~/.zsh-plugins
fi


if [ ! -f ""${HOME}"/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting
fi

source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

