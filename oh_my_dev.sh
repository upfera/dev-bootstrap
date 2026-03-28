#!/usr/bin/env bash
set -euo pipefail

source ./scripts/core/runner.sh

echo ""
echo -e "${BOLD}🚀 Development Environment Setup${RESET}"
echo -e "${DIM}----------------------------------------${RESET}"

run_step "Podman" ./scripts/dev/podman.sh
run_step "Podman as Docker" ./scripts/dev/podman_as_docker.sh

run_step "SDKMAN" ./scripts/dev/sdkman.sh

echo ""
echo -e "${GREEN}✅ Development environment setup completed!${RESET}"
echo ""