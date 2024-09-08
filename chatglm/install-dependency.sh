#!/bin/bash
python3 -m pip install -U pip
python3 -m pip install torch tabulate tqdm transformers accelerate sentencepiece

# quantize requires
python3 -m pip install tiktoken

# output model files
mkdir /tmp/models