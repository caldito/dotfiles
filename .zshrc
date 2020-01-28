##########
# Basics #
##########

# completion
autoload -Uz compinit
compinit

# auto cd
setopt  autocd autopushd

##########
# Prompt #
##########
[[ "$TERM" != "xterm-256color" ]] && export TERM=xterm-256color
PROMPT='%B%F{208}%n@%M%f %F{226}%~%f%b '

#########
# Alias #
#########

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

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
