# GPT-Quantize-Appack
This is GPT quantitative model building tools, make it easy to obtain artifacts in the cicd pipeline

## GLM4

GLM-4 series: Open Multilingual Multimodal Chat LMs 

### chatglm.cpp

Pure C++ implementation based on `ggml`, working in the same way as llama.cpp.

1. Installation Environment
2. Download GLM-4 Model
3. Quantize the model to `chatglm.cpp` proprietary formats.

then, you can easily load it via `chatglm.cpp`.

### llama.cpp

The main goal of `llama.cpp` is to enable LLM inference with minimal setup and state-of-the-art performance on a wide variety of hardware - locally and in the cloud.

1. Installation Environment (with OpenBLAS)
2. Download GLM-4 Model
3. Quantize to **ggml FP16** format.
4. Quantize to  to **GGUF** format, use Q4_K_M.

then, you can use it.