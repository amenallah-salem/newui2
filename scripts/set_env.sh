#!/bin/bash

# Change to the src directory
cd src || { echo "Directory 'src' not found"; exit 1; }

# Remove the old .env file if it exists and create a new one
if [ -f env ]; then
    rm .env
fi
touch .env

# Set the environment variables in the .env file
{
    echo "HF_ENDPOINT=https://hf-mirror.com"
    echo "OLLAMA_BASE_URL='http://localhost:11434'"
    echo "OPENAI_API_BASE_URL=''"
    echo "OPENAI_API_KEY=''"
    echo "# AUTOMATIC1111_BASE_URL=\"http://localhost:7860\""
    echo "# DO NOT TRACK"
    echo "SCARF_NO_ANALYTICS=true"
    echo "DO_NOT_TRACK=true"
    echo "ANONYMIZED_TELEMETRY=false"
} > .env

echo ".env file created successfully in the 'src' directory."
