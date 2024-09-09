#!/bin/bash
# output model files
mkdir -p /tmp/models

cd /tmp
git clone --recursive https://github.com/li-plus/chatglm.cpp.git && cd chatglm.cpp

# pip install
python3 -m pip install -U pip
python3 -m pip install torch tabulate tqdm transformers accelerate sentencepiece

# quantize requires
python3 -m pip install tiktoken


