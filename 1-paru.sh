#! /bin/bash

####### Clone paru
mkdir -p "$HOME/.config"
cd "$HOME/.config" || exit
pacman -Syu --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si
