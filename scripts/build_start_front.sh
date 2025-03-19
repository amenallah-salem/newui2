#!/bin/bash

# Define the repository URL and the local directory
REPO_URL="https://github.com/open-webui/open-webui.git"  # Change this to your repository URL
LOCAL_DIR="src"  # Change this to your desired local directory name

# Check if the local directory exists
if [ -d "$LOCAL_DIR" ]; then
    echo "Repository exists. Pulling the latest changes..."
    cd "$LOCAL_DIR" || exit
    git pull origin main  # Change 'main' to your default branch if necessary
else
    echo "Repository does not exist. Cloning from the internet..."
    git clone "$REPO_URL" "$LOCAL_DIR"
fi
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



