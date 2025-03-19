
#!/bin/bash

cd llama.cpp.bin/build/bin
./llama-server -m ../../../models_/gguf/Llama-3.2-1B.Q2_K.gguf --gpu-layers -1 --port 10000
./llama-server -m ../../../models_/gguf/qwen2-0_5b-instruct-q2_k.gguf --gpu-layers -1 --port 10001