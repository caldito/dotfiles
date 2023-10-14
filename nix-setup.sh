#!/usr/bin/env bash

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon
# Clone dotfiles repo
nix-shell -p git --run "git clone https://github.com/caldito/dotfiles.git .config/home-manager"
# Install home manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
# Setup environment with home-manager
home-manager switch
# Change shell to zsh
command -v zsh | sudo tee -a /etc/shells
chsh -s "$(command -v zsh)" "${USER}"
