#!/bin/bash

mkdir -p ~/.zsh/plugins

# Start git clones in parallel
git clone https://github.com/zdharma-zmirror/fast-syntax-highlighting.git ~/.zsh/plugins/fast-syntax-highlighting &
pid1=$!

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/plugins/zsh-autosuggestions &
pid2=$!

git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/plugins/zsh-completions &
pid3=$!

# Wait for all clones to finish (slow part)
wait $pid1 $pid2 $pid3

# Then do echo commands sequentially (fast part)
echo -e '\nsource ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh' >> ~/.zshrc
echo -e '\nsource ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

echo 'skip_global_compinit=1' > ~/.zshenv
echo -e '\nautoload -U compinit && compinit' >> ~/.zshrc
echo -e '\nfpath=(~/.zsh/plugins/zsh-completions/src $fpath)' >> ~/.zshrc