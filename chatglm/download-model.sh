#!/bin/bash
git lfs install

cd /tmp
# this is mirror
GIT_LFS_SKIP_SMUDGE=1 git clone https://wisemodel.cn/models/ZhipuAI/GLM-4-9B-Chat.git
cd GLM-4-9B-Chat/
# for display progress.
git lfs pull

# if you want to Hugging Face
# git clone https://huggingface.co/THUDM/glm-4-9b