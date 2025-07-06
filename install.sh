#!/usr/bin/env bash


#My dotfiles to set up my workstation environment.

# Currently I have dotfiles for
# * alacritty
# * i3
# * tmux
# * vim
# * zsh


. /etc/os-release
if [[ "$ID" == "debian" ]]; then
    # Basic stuff
    sudo apt install git openssh-client gpg stow vim tmux zsh alacritty

    # i3 and dependencies
    sudo apt install i3 blueman pulseaudio brightnessctl arandr redshift nitrogen scrot imagemagick fonts-hack fonts-font-awesome wget picom polybar xinit network-manager-gnome thunar ranger seahorse

    # Development and SRE related
    sudo apt upgrade gcc golang python3-pip openjdk-17-jdk maven nodejs npm podman kubectl curl dnsutils

    # Security related
    sudo apt install bettercap hashcat nmap wireshark ruby ruby-dev aircrack-ng gpa
    go install github.com/ffuf/ffuf/v2@latest
    sudo gem install wpscan

    # Other
    sudo apt install synchting neofetch

    # Extrepo for adding other repos
    sudo apt update && sudo apt install extrepo -y
    sudo extrepo enable librewolf vscodium
    sudo apt update && sudo apt install librewolf codium

    # Other random stuff
    # Natural touchpad scroll
    # TODO In `/usr/share/X11/xorg.conf.d/40-libinput.conf` add `Option "NaturalScrolling" "True"` in the touchpad section.

    #### Debian bookworm sources.list
    sudo sh -c 'echo "deb http://deb.debian.org/debian/ bookworm main contrib non-free-firmware non-free" > /etc/apt/sources.list'
    sudo sh -c 'echo "deb http://security.debian.org/debian-security bookworm-security main contrib non-free-firmware non-free" >> /etc/apt/sources.list'
    sudo sh -c 'echo "deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free-firmware non-free" >> /etc/apt/sources.list'
    #### Things outside repos and extrepos
    # - Bitwarden
    # - Spotify
    # - Obsidian

    # stow dotfiles
    stow -t $HOME alacritty
    stow -t $HOME i3
    stow -t $HOME tmux
    stow -t $HOME vim
    stow -t $HOME zsh

    # set shell to zsh
    chsh -s $(which zsh)

elif [[ "$ID" == "arch" ]]; then
    # Basic stuff
    sudo pacman -S git stow alacritty vim tmux zsh i3 redshift nitrogen scrot imagemagick wget picom

    # Development and SRE related
    sudo pacman -S gcc go python pyenv python-pip jdk11-openjdk jdk17-openjdk maven nodejs npm podman kubectl kubectx curl

    # Other
    sudo pacman -S librewolf bitwarden obsidian

    # stow dotfiles
    stow -t $HOME alacritty
    stow -t $HOME i3
    stow -t $HOME tmux
    stow -t $HOME vim
    stow -t $HOME zsh

    # set shell to zsh
    chsh -s $(which zsh)

# Steps for mac
elif [ "$(uname)" == "Darwin" ]]; then
    # Install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install basic packages and dependencies
    brew install stow alacritty tmux vim wget

    # Install GNU versions of commont CLI utils, from [this StackOverflow post](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332).
    brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep

    #Development, SRE, criptography and others
    brew install gcc go python pyenv openjdk@17 maven nodejs nvm podman kubectl kubectx gnupg gpa neofetch

    #Utilities
    brew install spotify vscodium bitwarden librewolf firefox zoom obsidian syncthing discord

    # stow dotfiles
    stow -t $HOME alacritty
    stow -t $HOME tmux
    stow -t $HOME vim
    stow -t $HOME zsh

fi
