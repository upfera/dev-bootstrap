#!/bin/bash
set -e

if [ -z "$LITELLM_URL" ]; then
  echo "ERROR: LITELLM_URL is not set"
  echo
  echo "Example:"
  echo 'export LITELLM_URL="http://10.0.0.101:4000"'
  exit 1
fi

curl -fsSL https://claude.ai/install.sh | bash

export ANTHROPIC_BASE_URL="$LITELLM_URL"
export ANTHROPIC_AUTH_TOKEN="sk-local"
export ANTHROPIC_MODEL="agent"

echo "Claude Code configured:"
echo "  ANTHROPIC_BASE_URL=$ANTHROPIC_BASE_URL"
echo "  ANTHROPIC_MODEL=$ANTHROPIC_MODEL"

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc