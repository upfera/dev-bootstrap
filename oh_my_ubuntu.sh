#!/usr/bin/env bash
set -euo pipefail

source ./scripts/core/runner.sh

echo ""
echo -e "${BOLD}🛠️  Ubuntu Developer Setup${RESET}"
echo -e "${DIM}----------------------------------------${RESET}"

run_step "System upgrade (initial)" bash -c "sudo apt update && sudo apt-get -y full-upgrade"

run_step "ZSH" ./scripts/shell/zsh.sh
run_step "ZSH plugins" ./scripts/shell/zsh_plugins.sh
run_step "eza" ./scripts/tools/eza.sh
run_step "fzf" ./scripts/tools/fzf.sh
run_step "fzf-tab" ./scripts/shell/fzf_tab.sh
run_step "fd" ./scripts/tools/fd.sh
run_step "yazi" ./scripts/shell/yazi.sh
run_step "ripgrep" ./scripts/tools/ripgrep.sh
run_step "zoxide" ./scripts/tools/zoxide.sh
run_step "zsh defer" ./scripts/shell/zsh_defer.sh
run_step "chezmoi" ./scripts/dev/chezmoi.sh

run_step "oh-my-posh" ./scripts/shell/oh_my_posh.sh
run_step "oh-my-tmux" ./scripts/shell/oh_my_tmux.sh

run_step "Final cleanup" bash -c "sudo apt update && sudo apt -y full-upgrade && sudo apt autoremove -y"

echo ""
echo -e "${GREEN}🎉 All done. Your system is ready.${RESET}"
echo ""