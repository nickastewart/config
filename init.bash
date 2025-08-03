#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install zsh
brew install ghostty
brew install nvim
brew install fzf
brew install ripgrep
brew install tmux
brew install zoxide
brew install eza
brew install yazi
brew install glow

brew install fastfetch
mkdir ~/.config/fastfetch

fastfetch -c ~/.config/fastfetch/config.jsonc
echo 'source ~/.config/.zshrc' >> ~/.zprofile
git config --global diff.tool nvimdiff

tmux -f ~/.config/.tmux.conf
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm

mkdir -p ~./tmux/plugins/catppuccin
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

