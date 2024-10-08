#!/bin/bash
DEFAULT_WORK_PATH=/tmp/works
RUNNING_PATH=${WORK_PATH-$DEFAULT_WORK_PATH}
# output model files
mkdir -p $RUNNING_PATH/models

cd $RUNNING_PATH
git clone --recursive https://github.com/li-plus/chatglm.cpp.git && cd chatglm.cpp

# pip install
python3 -m pip install -U pip
python3 -m pip install torch tabulate tqdm transformers accelerate sentencepiece

# quantize requires
python3 -m pip install tiktoken


