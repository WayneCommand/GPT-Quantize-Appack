#!/bin/bash

# 1. convert the model to ggml FP16 format
# INFO:hf-to-gguf:Model successfully exported to /tmp/GLM-4-9B-Chat/glm4-9B-chat-F16.gguf
python3 convert_hf_to_gguf.py /tmp/GLM-4-9B-Chat

# 2. quantize the model to 4-bits (using Q4_K_M method)
# GGUF model saved to /tmp/models/chatglm-ggml-model-Q4_K_M.gguf
./llama-quantize /tmp/GLM-4-9B-Chat/glm4-9B-chat-F16.gguf /tmp/models/chatglm-ggml-model-Q4_K_M.gguf Q4_K_M

# 3. (optional) update the gguf filetype to current version if older version is now unsupported
# ./llama-quantize /tmp/models/chatglm-ggml-model-Q4_K_M.gguf /tmp/models/chatglm-ggml-model-Q4_K_M-v2.gguf COPY

# for test
# ./llama-cli -m /tmp/models/chatglm-ggml-model-Q4_K_M.gguf -cnv -p "You are a helpful assistant"

