#!/bin/bash
DEFAULT_WORK_PATH=/tmp/works
RUNNING_PATH=${WORK_PATH-$DEFAULT_WORK_PATH}

git lfs install

cd $RUNNING_PATH
# this is mirror
GIT_LFS_SKIP_SMUDGE=1 git clone https://wisemodel.cn/models/ZhipuAI/GLM-4-9B-Chat.git
cd GLM-4-9B-Chat/
# for display progress.
git lfs pull

# if you want to Hugging Face
# git clone https://huggingface.co/THUDM/glm-4-9b