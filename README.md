# dotfiles

## Description

My dotfiles to set up my workstation environment.

Currently I have dotfiles for:
* alacritty
* i3 (not currently using it)
* tmux
* vim
* zsh

I'm currently using Ubuntu and MacOS but there are also instructions for Arch since I've used it for some time. Not all the OS setup is automated because I don't changes distros often, my heavy distrohopping phase has ended for now :)

## Usage

### Stow method and install stuff manuall
You can link the dotfiles using stow.
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
sudo apt install bettercap hashcat nmap wireshark ruby ruby-dev
go install github.com/ffuf/ffuf/v2@latest
sudo gem install wpscan
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
