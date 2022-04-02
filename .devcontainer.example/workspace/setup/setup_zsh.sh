#!/bin/zsh

# Install peco
wget https://github.com/peco/peco/releases/download/v0.5.10/peco_linux_amd64.tar.gz
tar zxvf peco_linux_amd64.tar.gz
cp -p peco_linux_amd64/peco /usr/local/bin

# Install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
