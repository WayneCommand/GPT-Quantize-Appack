#!/bin/bash
# output model files
mkdir -p /tmp/models

# clone repo
cd /tmp
git clone https://github.com/ggerganov/llama.cpp.git

## install dependency
cd llama.cpp
python3 -m pip install -r requirements.txt
sudo apt update && sudo apt install libopenblas-dev -y
make GGML_OPENBLAS=1 -j 8

