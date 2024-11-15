#!/bin/bash
DEFAULT_WORK_PATH=/tmp/works
RUNNING_PATH=${WORK_PATH-$DEFAULT_WORK_PATH}

# output model files
mkdir -p $RUNNING_PATH/models

# clone repo
cd $RUNNING_PATH
git clone https://github.com/ggerganov/llama.cpp.git

## install dependency
cd llama.cpp
python3 -m pip install -r requirements.txt --break-system-packages
sudo apt update && sudo apt install libopenblas-dev -y
make GGML_OPENBLAS=1 -j 8

