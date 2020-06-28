# dotfiles

## Description

My dotfiles, ansible roles and playbooks to set up my workstation environment.

## Usage

To set up the environment run ```sudo apt update && sudo apt upgrade && sudo apt install git python3-pip && pip3 install ansible molecule && PATH="${PATH}":"${HOME}"/.local/bin && mkdir "${HOME}"/git && cd "${HOME}"/git && git clone https://github.com/pablogcaldito/dotfiles.git && cd dotfiles && ansible-playbook playbook.yml --ask-become-pass```
