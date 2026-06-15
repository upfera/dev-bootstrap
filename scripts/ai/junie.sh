#!/bin/bash
set -e

if [ -z "$LITELLM_URL" ]; then
  echo "ERROR: LITELLM_URL is not set"
  echo
  echo "Example:"
  echo 'export LITELLM_URL="http://10.0.0.101:4000"'
  exit 1
fi

sudo apt-get update && sudo apt-get install -y unzip

curl -fsSL https://junie.jetbrains.com/install.sh | bash

mkdir -p ~/.junie/models

cat > ~/.junie/models/litellm.json <<EOF
{
  "baseUrl": "${LITELLM_URL}/v1/chat/completions",
  "id": "code",
  "apiType": "OpenAICompletion",
  "extraHeaders": {
    "X-Custom-Source": "Junie"
  },
  "fasterModel": {
    "id": "fast"
  }
}
EOF

export JUNIE_MODEL="custom:litellm"

echo "Created ~/.junie/models/litellm.json"
echo "Using LiteLLM at: $LITELLM_URL"