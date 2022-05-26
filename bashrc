### Dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dot-ls="dot ls-tree --full-tree -r HEAD"
alias dot-init="dot config --local status.showUntrackedFiles no"
