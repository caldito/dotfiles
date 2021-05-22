# dotfiles

## Description

My dotfiles to set up my workstation environment.

Currently I have dotfiles for:
* alacritty
* i3
* tmux
* vim
* zsh
* xinit

## Usage

This dotfiles are meant to be managed using stow. 

`stow -t $HOME program-name`

## Requirements

Some packages need to be installed in order to get all the features that the dotfiles provide.

For Arch Linux:
`sudo pacman -S stow alacritty vim tmux zsh i3 redshift scrot imagemagick`
