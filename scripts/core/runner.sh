#!/usr/bin/env bash
set -euo pipefail

# Colors
BOLD="\033[1m"
DIM="\033[2m"
GREEN="\033[32m"
BLUE="\033[34m"
RED="\033[31m"
RESET="\033[0m"

# Icons
ICON_STEP="⚙️"
ICON_DONE="✔"
ICON_FAIL="✖"

log() {
    echo -e "$1"
}

run_step() {
    local name="$1"
    shift

    echo ""
    log "${BOLD}${BLUE}${ICON_STEP} ${name}${RESET}"

    if "$@"; then
        log "${GREEN}${ICON_DONE} Done${RESET}"
    else
        log "${RED}${ICON_FAIL} Failed${RESET}"
        exit 1
    fi
}