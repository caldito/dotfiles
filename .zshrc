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
PATH=$PATH:~/.local/bin

##########
# Prompt #
##########
[[ "$TERM" != "xterm-256color" ]] && export TERM=xterm-256color
PROMPT='%B%F{166}%n@%M%f %F{136}%~%f %F{160}${vcs_info_msg_0_}%f%b'

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

#############
# Dircolors #
#############

if [ ! -d ""${HOME}"/.dircolors" ]; then
    mkdir ~/.dircolors
fi

if [ ! -f ""${HOME}"/.dircolors/dircolors.ansi-universal" ]; then
    wget -q https://raw.githubusercontent.com/pszynk/zsh-dircolors/master/dircolors/dircolors.ansi-universal  -P ~/.dircolors
fi

# Return if requirements are not found.
if (( ! $+commands[dircolors] )); then
  echo need to install dircolors package
  return 1
fi

unset LS_COLORS && eval $(dircolors "${HOME}"/.dircolors/dircolors.ansi-universal)

