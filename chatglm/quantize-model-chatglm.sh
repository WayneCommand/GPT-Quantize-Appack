#!/bin/bash
DEFAULT_WORK_PATH=/tmp/works
RUNNING_PATH=${WORK_PATH-$DEFAULT_WORK_PATH}

mkdir $RUNNING_PATH/models

python3 $RUNNING_PATH/chatglm.cpp/chatglm_cpp/convert.py -i $RUNNING_PATH/GLM-4-9B-Chat -t q4_0 -o $RUNNING_PATH/models/chatglm-ggml.bin

# GGML model saved to /tmp/models/chatglm-ggml.bin