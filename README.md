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

### Debian/Ubuntu
Basic stuff
```
sudo apt install git ssh gpg stow vim tmux zsh 
```

i3 and dependencies:
```
sudo apt install i3 blueman pulseaudio brightnessctl redshift nitrogen scrot imagemagick fonts-hack
```

Development and SRE related:
```
sudo apt upgrade gcc golang python3-pip openjdk-17-jdk maven nodejs npm podman kubectl
```

Security related:
```
sudo apt install bettercap hashcat nmap wireshark ruby ruby-dev aircrack-ng gpa
go install github.com/ffuf/ffuf/v2@latest
sudo gem install wpscan
```

### Other random stuff
#### Natural touchpad scroll
In `/usr/share/X11/xorg.conf.d/40-libinput.conf` add `Option "NaturalScrolling" "True"` in the touchpad section.
#### Buster sources.list
```
deb http://deb.debian.org/debian/ bookworm main contrib non-free-firmware # non-free
deb http://security.debian.org/debian-security bookworm-security main contrib non-free-firmware # non-free
deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free-firmware # non-free
```
#### Things outside repos
- Librewolf
- Bitwarden
- Spotify
- Codium
### Arch Linux
```
sudo pacman -S git stow alacritty vim tmux zsh i3 redshift nitrogen scrot imagemagick
```

Development related:
```
sudo pacman -S gcc go python pyenv python-pip jdk11-openjdk jdk17-openjdk maven nodejs npm podman kubectl kubectx
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

Development related:
```
brew install gcc go python pyenv openjdk@11 openjdk@17 maven nodejs nvm podman kubectl kubectx
```
