#!/usr/bin/env bash

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon
. /etc/profile.d/nix.sh
# Clone dotfiles repo
nix-shell -p git --run "git clone https://github.com/caldito/dotfiles.git .config/home-manager"
# Install home manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
# Change shell to zsh
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s "$(command -v zsh)" "${USER}"
