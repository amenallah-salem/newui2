#!/bin/bash
cd src/
# Define color .sh 
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color
# BEFORE BUILD SET ENV VARS 

# BUILD 
echo -e "${GREEN}STARTING BUILD${NC}"
##########################
# build front
##########################

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# Load NVM (you may need to restart your terminal or source your profile)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

echo "Installing Node.js version 22.13.1..."
nvm install 22.13.1

echo "Node.js version installed:"
node -v

echo "Skiping Installing npm packages..."
#npm install
echo "Skiping running npm run build --verbose..."

#npm run build --verbose


python -m pip install --upgrade pip
pip install build
python -m build .
# SUCCESS 

