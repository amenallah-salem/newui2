#!/bin/bash

# Define the repository URL and the local directory
LOCAL_DIR="src"  # Change this to your desired local directory name

cd "$LOCAL_DIR" 
# Install NVM and Node.js

echo " Init project with Node.js version installed:"
node -v

echo "Installing npm packages..."
npm run dev



