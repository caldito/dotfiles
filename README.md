# dotfiles

## Description

My dotfiles to set up my workstation environment.

Currently I have dotfiles for:
* alacritty
* i3
* tmux
* vim
* zsh

I'm currently using Arch but I also enjoy using Debian based distros so I hope to port the instructions below to them.

## Usage

This dotfiles are meant to be managed using stow.

```stow -t $HOME program-name```

## Requirements

Some packages need to be installed in order to get all the features that the dotfiles provide.

### Arch Linux
```sudo pacman -S git stow alacritty vim tmux zsh i3 redshift nitrogen scrot imagemagick```

### MacOS
```brew install alacritty tmux vim```

Install GNU versions of commont CLI utils, from [this StackOverflow post](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332).

```brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep```

## Other packages

The packages in this section aren't related to the dotfiles but I post the install instructions here also, for easier setup in future reinstallations of the OS.

### Arch Linux
Development related:

```sudo pacman -S gcc go python python-pip jdk11-openjdk maven nodejs npm podman kubectl```
