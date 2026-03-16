#!/usr/bin/env bash

# Exit script if any command fails
set -e

echo "Installing Node.js 24 using NVM..."

# Download and install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# Load nvm into the current shell session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Download and install Node.js version 24
nvm install 24

# Verify the Node.js version
echo "Verifying Node.js version..."
node -v

# Verify npm version
echo "Verifying npm version..."
npm -v

echo "Node.js 24 installation complete via NVM!"
echo "Note: NVM sets up Node.js for your user profile ($HOME). You may need to restart your shell or run 'source ~/.bashrc' (or equivalent) for node commands to be available in new sessions."
