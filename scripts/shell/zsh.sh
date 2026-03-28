#!/bin/bash

# Install ZSH with plugins
sudo apt -y install zsh

# Setup config files
cp ./dot_files/.zshrc ~/.zshrc

mkdir -p ~/.zsh
touch ~/.zsh/.zsh_history

# Support for left/right arrow keys movement in terminal
echo -e '\nbindkey "\e[1;5C" forward-word' >> ~/.zshrc
echo 'bindkey "\e[1;5D" backward-word' >> ~/.zshrc

sudo chsh -s $(which zsh) $(whoami)
