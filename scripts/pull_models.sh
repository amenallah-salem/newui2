#!/bin/bash
mkdir models 
mkdir models_/gguf 
mkdir models_/em 
mkdir models_/whl
huggingface-cli download Qwen/Qwen2-0.5B-Instruct-GGUF qwen2-0_5b-instruct-q2_k.gguf \
  --local-dir models_/gguf --local-dir-use-symlinks False

huggingface-cli download QuantFactory/Llama-3.2-1B-GGUF Llama-3.2-1B.Q2_K.gguf \
  --local-dir models_/gguf --local-dir-use-symlinks False
