#!/bin/bash

cat > config.yaml <<'EOF'
litellm_settings:
  drop_params: true

  model_alias_map:
    fast: deepseek-v4-flash
    code: nemotron-3-super-120b-a12b
    agent: nemotron-3-super-120b-a12b

router_settings:
  optional_pre_call_checks:
    - enforce_model_rate_limits
  num_retries: 5

model_list:
  - model_name: openrouter-kimi-k2.7-code
    litellm_params:
      model: openrouter/moonshotai/kimi-k2.7-code

  - model_name: openrouter-kimi-latest
    litellm_params:
      model: openrouter/moonshotai/kimi-latest

  - model_name: openrouter-kimi-k2.6
    litellm_params:
      model: openrouter/moonshotai/kimi-k2.6

  - model_name: openrouter-kimi-thinking
    litellm_params:
      model: openrouter/moonshotai/kimi-k2-thinking

  - model_name: openrouter-sonnet-4.5
    litellm_params:
      model: openrouter/anthropic/claude-sonnet-4.5

  - model_name: openrouter-gemini-2.5-pro
    litellm_params:
      model: openrouter/google/gemini-2.5-pro

  - model_name: openrouter-gpt-5.5
    litellm_params:
      model: openrouter/openai/gpt-5.5

  - model_name: openrouter-qwen3-coder
    litellm_params:
      model: openrouter/qwen/qwen3-coder

  - model_name: openrouter-deepseek-v3
    litellm_params:
      model: openrouter/deepseek/deepseek-chat-v3

  - model_name: openrouter-deepseek-r1
    litellm_params:
      model: openrouter/deepseek/deepseek-r1

  - model_name: dracarys-llama-3.1-70b-instruct
    litellm_params:
      model: nvidia_nim/abacusai/dracarys-llama-3.1-70b-instruct

  - model_name: seed-oss-36b-instruct
    litellm_params:
      model: nvidia_nim/bytedance/seed-oss-36b-instruct

  - model_name: deepseek-v4-flash
    litellm_params:
      model: nvidia_nim/deepseek-ai/deepseek-v4-flash
      temperature: 0.2

  - model_name: deepseek-v4-pro
    litellm_params:
      model: nvidia_nim/deepseek-ai/deepseek-v4-pro

  - model_name: gemma-2-2b-it
    litellm_params:
      model: nvidia_nim/google/gemma-2-2b-it

  - model_name: gemma-3n-e2b-it
    litellm_params:
      model: nvidia_nim/google/gemma-3n-e2b-it

  - model_name: gemma-3n-e4b-it
    litellm_params:
      model: nvidia_nim/google/gemma-3n-e4b-it

  - model_name: gemma-4-31b-it
    litellm_params:
      model: nvidia_nim/google/gemma-4-31b-it

  - model_name: llama-3.1-70b-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.1-70b-instruct

  - model_name: llama-3.1-8b-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.1-8b-instruct

  - model_name: llama-3.2-11b-vision-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.2-11b-vision-instruct

  - model_name: llama-3.2-1b-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.2-1b-instruct

  - model_name: llama-3.2-3b-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.2-3b-instruct

  - model_name: llama-3.2-90b-vision-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.2-90b-vision-instruct

  - model_name: llama-3.3-70b-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-3.3-70b-instruct

  - model_name: llama-4-maverick-17b-128e-instruct
    litellm_params:
      model: nvidia_nim/meta/llama-4-maverick-17b-128e-instruct

  - model_name: llama-guard-4-12b
    litellm_params:
      model: nvidia_nim/meta/llama-guard-4-12b

  - model_name: phi-4-mini-instruct
    litellm_params:
      model: nvidia_nim/microsoft/phi-4-mini-instruct

  - model_name: phi-4-multimodal-instruct
    litellm_params:
      model: nvidia_nim/microsoft/phi-4-multimodal-instruct

  - model_name: minimax-m2.7
    litellm_params:
      model: nvidia_nim/minimaxai/minimax-m2.7

  - model_name: codestral-22b-instruct-v0.1
    litellm_params:
      model: nvidia_nim/mistralai/codestral-22b-instruct-v0.1

  - model_name: ministral-14b-instruct-2512
    litellm_params:
      model: nvidia_nim/mistralai/ministral-14b-instruct-2512

  - model_name: mistral-7b-instruct-v0.3
    litellm_params:
      model: nvidia_nim/mistralai/mistral-7b-instruct-v0.3

  - model_name: mistral-large
    litellm_params:
      model: nvidia_nim/mistralai/mistral-large

  - model_name: mistral-large-2-instruct
    litellm_params:
      model: nvidia_nim/mistralai/mistral-large-2-instruct

  - model_name: mistral-large-3-675b-instruct-2512
    litellm_params:
      model: nvidia_nim/mistralai/mistral-large-3-675b-instruct-2512

  - model_name: mistral-medium-3.5-128b
    litellm_params:
      model: nvidia_nim/mistralai/mistral-medium-3.5-128b

  - model_name: mistral-nemotron
    litellm_params:
      model: nvidia_nim/mistralai/mistral-nemotron

  - model_name: mistral-small-4-119b-2603
    litellm_params:
      model: nvidia_nim/mistralai/mistral-small-4-119b-2603

  - model_name: mixtral-8x7b-instruct-v0.1
    litellm_params:
      model: nvidia_nim/mistralai/mixtral-8x7b-instruct-v0.1

  - model_name: kimi-k2.6
    litellm_params:
      model: nvidia_nim/moonshotai/kimi-k2.6
      rpm: 5
      tpm: 2000000

  - model_name: ai-synthetic-video-detector
    litellm_params:
      model: nvidia_nim/nvidia/ai-synthetic-video-detector

  - model_name: gliner-pii
    litellm_params:
      model: nvidia_nim/nvidia/gliner-pii

  - model_name: ising-calibration-1-35b-a3b
    litellm_params:
      model: nvidia_nim/nvidia/ising-calibration-1-35b-a3b

  - model_name: llama-3.1-nemoguard-8b-content-safety
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.1-nemoguard-8b-content-safety

  - model_name: llama-3.1-nemoguard-8b-topic-control
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.1-nemoguard-8b-topic-control

  - model_name: llama-3.1-nemotron-nano-8b-v1
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.1-nemotron-nano-8b-v1

  - model_name: llama-3.1-nemotron-nano-vl-8b-v1
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.1-nemotron-nano-vl-8b-v1

  - model_name: llama-3.1-nemotron-safety-guard-8b-v3
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.1-nemotron-safety-guard-8b-v3

  - model_name: llama-3.3-nemotron-super-49b-v1
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.3-nemotron-super-49b-v1

  - model_name: llama-3.3-nemotron-super-49b-v1.5
    litellm_params:
      model: nvidia_nim/nvidia/llama-3.3-nemotron-super-49b-v1.5

  - model_name: nemoretriever-parse
    litellm_params:
      model: nvidia_nim/nvidia/nemoretriever-parse

  - model_name: nemotron-3-content-safety
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3-content-safety

  - model_name: nemotron-3-nano-30b-a3b
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3-nano-30b-a3b

  - model_name: nemotron-3-nano-omni-30b-a3b-reasoning
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3-nano-omni-30b-a3b-reasoning

  - model_name: nemotron-3-super-120b-a12b
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3-super-120b-a12b
      temperature: 0.0

  - model_name: nemotron-3-ultra-550b-a55b
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3-ultra-550b-a55b

  - model_name: nemotron-3.5-content-safety
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-3.5-content-safety

  - model_name: nemotron-content-safety-reasoning-4b
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-content-safety-reasoning-4b

  - model_name: nemotron-mini-4b-instruct
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-mini-4b-instruct

  - model_name: nemotron-nano-12b-v2-vl
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-nano-12b-v2-vl

  - model_name: nemotron-parse
    litellm_params:
      model: nvidia_nim/nvidia/nemotron-parse

  - model_name: nvidia-nemotron-nano-9b-v2
    litellm_params:
      model: nvidia_nim/nvidia/nvidia-nemotron-nano-9b-v2

  - model_name: riva-translate-4b-instruct-v1.1
    litellm_params:
      model: nvidia_nim/nvidia/riva-translate-4b-instruct-v1.1

  - model_name: gpt-oss-120b
    litellm_params:
      model: nvidia_nim/openai/gpt-oss-120b

  - model_name: gpt-oss-20b
    litellm_params:
      model: nvidia_nim/openai/gpt-oss-20b

  - model_name: qwen3-coder-480b-a35b-instruct
    litellm_params:
      model: nvidia_nim/qwen/qwen3-coder-480b-a35b-instruct

  - model_name: qwen3-next-80b-a3b-instruct
    litellm_params:
      model: nvidia_nim/qwen/qwen3-next-80b-a3b-instruct

  - model_name: qwen3.5-122b-a10b
    litellm_params:
      model: nvidia_nim/qwen/qwen3.5-122b-a10b

  - model_name: qwen3.5-397b-a17b
    litellm_params:
      model: nvidia_nim/qwen/qwen3.5-397b-a17b

  - model_name: sarvam-m
    litellm_params:
      model: nvidia_nim/sarvamai/sarvam-m

  - model_name: step-3.5-flash
    litellm_params:
      model: nvidia_nim/stepfun-ai/step-3.5-flash

  - model_name: step-3.7-flash
    litellm_params:
      model: nvidia_nim/stepfun-ai/step-3.7-flash

  - model_name: stockmark-2-100b-instruct
    litellm_params:
      model: nvidia_nim/stockmark/stockmark-2-100b-instruct

  - model_name: solar-10.7b-instruct
    litellm_params:
      model: nvidia_nim/upstage/solar-10.7b-instruct

  - model_name: palmyra-fin-70b-32k
    litellm_params:
      model: nvidia_nim/writer/palmyra-fin-70b-32k

  - model_name: palmyra-med-70b
    litellm_params:
      model: nvidia_nim/writer/palmyra-med-70b

  - model_name: palmyra-med-70b-32k
    litellm_params:
      model: nvidia_nim/writer/palmyra-med-70b-32k

  - model_name: glm-5.1
    litellm_params:
      model: nvidia_nim/z-ai/glm-5.1

  - model_name: zamba2-7b-instruct
    litellm_params:
      model: nvidia_nim/zyphra/zamba2-7b-instruct

  - model_name: yi-large
    litellm_params:
      model: nvidia_nim/01-ai/yi-large
EOF