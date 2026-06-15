#!/bin/bash
ENV_FILE=".env"

if [ -f "$ENV_FILE" ]; then
    export $(cat "$ENV_FILE" | grep -v '^#' | xargs)
fi

if [ -z "$NVIDIA_NIM_API_KEY" ]; then
    read -s -p "Enter NVIDIA_NIM_API_KEY (input hidden): " NVIDIA_NIM_API_KEY
    echo ""
    echo "NVIDIA_NIM_API_KEY=\"$NVIDIA_NIM_API_KEY\"" >> "$ENV_FILE"
    export NVIDIA_NIM_API_KEY
fi

if [ -z "$OPENROUTER_API_KEY" ]; then
    read -s -p "Enter OPENROUTER_API_KEY (input hidden): " OPENROUTER_API_KEY
    echo ""
    echo "OPENROUTER_API_KEY=\"$OPENROUTER_API_KEY\"" >> "$ENV_FILE"
    export OPENROUTER_API_KEY
fi

if [ -z "$GITHUB_API_KEY" ]; then
    read -s -p "Enter GITHUB_API_KEY (input hidden): " GITHUB_API_KEY
    echo ""
    echo "GITHUB_API_KEY=\"$GITHUB_API_KEY\"" >> "$ENV_FILE"
    export GITHUB_API_KEY
fi

if [ -z "$LITELLM_MASTER_KEY" ]; then
    read -s -p "Enter LITELLM_MASTER_KEY for UI (input hidden): " LITELLM_MASTER_KEY
    echo ""
    echo "LITELLM_MASTER_KEY=\"$LITELLM_MASTER_KEY\"" >> "$ENV_FILE"
    export LITELLM_MASTER_KEY
fi

chmod 600 "$ENV_FILE"

echo "=== COMPLETELY CLEARING DOCKER ENVIRONMENT ==="
docker compose down -v --remove-orphans

echo "=== STARTING LITELLM FROM SCRATCH ==="
docker compose up -d --force-recreate

echo "=== SYSTEM RUNNING ==="