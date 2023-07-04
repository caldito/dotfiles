# dotfiles

## Description

My dotfiles to set up my workstation environment.

Currently I have dotfiles for:
* alacritty
* i3 (not currently using it)
* tmux
* vim
* zsh

I'm currently using Arch but I also enjoy using Debian based distros so I hope to port the instructions below to them.

## Usage
This dotfiles are meant to be managed using stow.
```
stow -t $HOME program-name
```

## Requirements
Some packages need to be installed in order to get all the features that the dotfiles provide.

### Ubuntu
```
sudo apt install git stow vim tmux zsh
```

### Arch Linux
```
sudo pacman -S git stow alacritty vim tmux zsh i3 redshift nitrogen scrot imagemagick
```

### MacOS
Install brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install basic packages
```
brew install alacritty tmux vim
```

Install GNU versions of commont CLI utils, from [this StackOverflow post](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332).
```
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
```

## Other packages
The packages in this section aren't related to the dotfiles but I post the install instructions here also, for easier setup in future reinstallations of the OS.

### Ubuntu
CTFs related:
```
sudo apt install bettercap hashcat nmap wireshark
```
Development related:
```
sudo apt upgrade gcc golang python3-pip openjdk-17-jdk maven nodejs npm podman kubectl
```

### Arch Linux
Development related:
```
sudo pacman -S gcc go python pyenv python-pip jdk11-openjdk jdk17-openjdk maven nodejs npm podman kubectl kubectx
```

### MacOS
Development related:
```
brew install gcc go python pyenv openjdk@11 openjdk@17 maven nodejs nvm podman kubectl kubectx
```
