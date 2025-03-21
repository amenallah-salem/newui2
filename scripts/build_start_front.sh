#!/bin/bash

# Define the repository URL and the local directory
LOCAL_DIR="src"  # Change this to your desired local directory name

# Check if the local directory exists
cd "$LOCAL_DIR" 
# Install NVM and Node.js
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# Load NVM (you may need to restart your terminal or source your profile)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

echo "Installing Node.js version 22.13.1..."
nvm install 22.13.1

echo "Node.js version installed:"
node -v

echo "Installing npm packages..."
npm install
npm run build --verbose
npm run dev



