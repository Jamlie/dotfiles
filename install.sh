#!/usr/bin/env bash

# Update
sudo apt update -y && sudo apt upgrade -y

# Git
sudo apt install git -y

# Build-Essential
sudo apt install build-essential -y

# Curl
sudo apt install curl -y

# Coreutils
sudo apt install coreutils -y

# nvim
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar -xzvf nvim-linux64.tar.gz

# install Jamlie/nvim
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
git clone https://github.com/Jamlie/nvim.git ~/.config/nvim

# Go
curl -LO https://golang.org/dl/go1.22.0.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# nvm & nodejs & npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install node

# Wasmtime
curl https://wasmtime.dev/install.sh -sSf | bash

# Packages
sudo apt install dos2unix -y
sudo apt install ffmpegthumbnailer -y
sudo apt install ffmpeg -y
sudo apt install unar -y
sudo apt install poppler-utils -y
sudo apt install tmux -y
sudo apt install ripgrep -y
sudo apt install fd-find -y
sudo apt install bat -y
sudo apt install lsd -y
sudo apt install fzf -y
sudo apt install lazygit -y
go install github.com/spf13/cobra-cli@latest
go install github.com/melkeydev/go-blueprint@latest
go install github.com/a-h/templ/cmd/templ@latest
cargo install fend
cargo install tokei
cargo install ocrs-cli
cargo install zoxide --locked
cargo install --locked yazi-fm
