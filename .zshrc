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

##########
# Prompt #
##########
[[ "$TERM" != "xterm-256color" ]] && export TERM=xterm-256color
PROMPT='%B%F{166}%n@%M%f %F{136}%~%f %F{160}${vcs_info_msg_0_}%f%b'

#########
# Alias #
#########

alias ls='ls --color=auto'
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

 ## Dircolors

if [ ! -d ""${HOME}"/.dircolors" ]; then
    mkdir ~/.dircolors
fi

if [ ! -f ""${HOME}"/.dircolors/dircolors.ansi-universal" ]; then
    wget -q https://raw.githubusercontent.com/pszynk/zsh-dircolors/master/dircolors/dircolors.ansi-universal  -P ~/.dircolors
fi

# Return if requirements are not found.
if (( ! $+commands[dircolors] )); then
  return 1
fi

#function _setup_dircolors {
#  local dircolors_dir
#  local scheme
#  local scheme_path
#
#  dircolors_dir="${ZSH_DIRCOLORS_DIR:-${0:A:h}/.dircolors}"
#  zstyle -s ':pszynk:module:dircolors' scheme 'scheme' || scheme='dircolors.ansi-universal'
#
#  scheme_path="${dircolors_dir}/${scheme}"
#  if [[ ! -f $scheme_path ]]; then
#    scheme_path="${dircolors_dir}/${scheme}"
#    if [[ ! -f $scheme_path ]]; then
#      print "Could not load dircolors scheme, file not found: '$scheme_path'" >&2
#      return 1
#    fi
#  fi
#
#  unset LS_COLORS && eval $(dircolors $scheme_path)
#  if [[ $LS_COLORS = '' ]]; then
#     print "Dircolor scheme '${scheme_path}' does not support terminal '${TERM}'!" >&2
#     return 1
#  fi
#  return 0
#
#}
#
#_setup_dircolors $@


unset LS_COLORS && eval $(dircolors "${HOME}"/.dircolors/dircolors.ansi-universal)

