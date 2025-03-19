# Use the official Python 3.11 slim image as the base
FROM python:3.11-slim-bookworm AS base

# Set build arguments
ARG USE_CUDA=false
ARG USE_CUDA_VER=cu121
ARG BUILD_HASH=dev-build

# Set the environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages in a single RUN command to reduce layers
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        git \
        build-essential \
        pandoc \
        netcat-openbsd \
        curl \
        gcc \
        python3-dev \
        ffmpeg \
        libsm6 \
        libxext6 \
        jq \
        zip unzip && \ 
    # Clean up to reduce image size
    apt-get clean && \
    apt-get install wget && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy only the necessary files first to leverage Docker cache
COPY requirements-dev.txt ./
RUN pip install --no-cache-dir -r requirements-dev.txt

# Copy the rest of the project files into the container
COPY . .

# Make the build script executable and run it
RUN chmod +x ./scripts/build_pycli@docker.sh && \
    ./scripts/build_pycli@docker.sh
RUN mkdir -p releases
RUN mkdir -p releases/ubuntu20.04anylinux/ && \
    rm -rf releases/ubuntu20.04anylinux/* && \
    cp -r src/dist/* releases/ubuntu20.04anylinux/
    
# # Download and unzip the required files in a single RUN command
RUN wget -q https://github.com/ggml-org/llama.cpp/releases/download/b4783/llama-b4783-bin-ubuntu-x64.zip && \
    unzip -qo llama-b4783-bin-ubuntu-x64.zip -d llama.cpp.bin && \
    cp -r llama.cpp.bin/ releases/ubuntu20.04anylinux/ && \
    rm llama-b4783-bin-ubuntu-x64.zip  # Clean up the zip file

# Set the default command
CMD ["/bin/bash"]
