# dotfiles

## Description

My dotfiles to set up my workstation environment.

Currently I have dotfiles for:
* alacritty
* i3 
* tmux
* vim
* zsh

I'm currently using Ubuntu/Debian and MacOS but there are also instructions for Arch since I've used it for some time. Not all the OS setup is automated because I don't changes distros often, my heavy distrohopping phase has ended for now :)

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
sudo apt install git openssh-client gpg stow vim tmux zsh
```

i3 and dependencies:
```
sudo apt install i3 blueman pulseaudio brightnessctl arandr redshift nitrogen scrot imagemagick fonts-hack fonts-font-awesome wget picom
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
#### Debian bookworm sources.list
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
sudo pacman -S git stow alacritty vim tmux zsh i3 redshift nitrogen scrot imagemagick wget picom
```

Development related:
```
sudo pacman -S gcc go python pyenv python-pip jdk11-openjdk jdk17-openjdk maven nodejs npm podman kubectl kubectx
```
Other:
```
sudo pacman -S librewolf bitwarden obsidian
```

### MacOS
Install brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install basic packages and dependencies
```
brew install stow alacritty tmux vim wget
```

Install GNU versions of commont CLI utils, from [this StackOverflow post](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332).
```
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
```

Development, SRE, criptography and others:
```
brew install gcc go python pyenv openjdk@17 maven nodejs nvm podman kubectl kubectx gnupg gpa neofetch
```

Utilities:
```
brew install spotify vscodium bitwarden librewolf firefox zoom obsidian syncthing discord
```
