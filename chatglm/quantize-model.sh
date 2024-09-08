#!/bin/bash
mkdir /tmp/models

python3 /tmp/chatglm.cpp/chatglm_cpp/convert.py -i /tmp/GLM-4-9B-Chat -t q4_0 -o /tmp/models/chatglm-ggml.bin

# GGML model saved to /tmp/models/chatglm-ggml.bin