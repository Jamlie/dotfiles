#!/usr/bin/env bash

# Update
sudo apt update -y && sudo apt upgrade -y

# Unzip
sudo apt install unzip -y

# Git
sudo apt install git -y

# Build-Essential
sudo apt install build-essential -y

# Curl
sudo apt install curl -y

# Coreutils
sudo apt install coreutils -y

# nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzvf nvim-linux-x86_64.tar.gz
mv nvim-linux-x86_64 nvim-linux64

# install Jamlie/nvim
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
git clone https://github.com/Jamlie/nvim.git ~/.config/nvim

# Go
curl -LO https://golang.org/dl/go1.24.0.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# nvm & nodejs & npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install node

# pnpm
curl -fsSL https://get.pnpm.io/install.sh | env PNPM_VERSION=9.15.5 sh -

# Wasmtime
curl https://wasmtime.dev/install.sh -sSf | bash

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

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
sudo apt install lazygit -y
sudo apt install lua5.3 -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install luarocks -y
sudo apt install zsh -y
sudo luarocks install luv
go install github.com/spf13/cobra-cli@latest
go install github.com/melkeydev/go-blueprint@latest
go install github.com/a-h/templ/cmd/templ@latest
go install github.com/air-verse/air@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.60.3
cargo install fend
cargo install tokei
cargo install ocrs-cli
cargo install zoxide --locked
cargo install --locked yazi-fm
cargo install stylua
cargo install du-dust

bat cache --build
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
