


##########
# Prompt #
##########

PROMPT='"$(whoami)" in %~ -> '

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
