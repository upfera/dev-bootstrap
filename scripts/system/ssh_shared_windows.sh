#!/bin/bash

source ./dot_files/.ssh_aliases

cat .ssh_aliases >> ~/.zsh_aliases
cat .ssh_aliases >> ~/.bash_aliases

windows_home=$(wslpath "$(powershell.exe '$env:USERPROFILE')")
cp -r ${windows_home/$'\r'/}/.gitconfig ~/.gitconfig

git config --global core.sshcommand "ssh.exe"