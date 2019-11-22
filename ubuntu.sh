#!/usr/bin/env bash

sudo apt update
sudo apt -y upgrade

sudo apt install chromium-browser tlp vlc git neofetch chrome-gnome-shell virtualbox papirus-icon-theme arc-theme gnome-tweak-tool ubuntu-restricted-extras vim baobab terminator

#libreoffice
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt install libreoffice

#vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders
