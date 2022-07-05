#! /bin/bash

### Clone dotfiles
cat ./bashrc >>"$HOME/.bashrc"
source "$HOME/.bashrc"

# echo ".dotfiles" >>"$HOME/.gitignore"

# git clone --bare https://github.com/chaesngmin/dotfiles "$HOME/.dotfiles"
# dot checkout
# dot-init

git clone --bare https://gitlab.com/chaesngmin/dotfiles "$HOME/.dotfiles"

dot checkout

# chsh -s /bin/zsh
chsh -s /usr/bin/zsh
