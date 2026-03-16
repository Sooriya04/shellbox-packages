#!/usr/bin/env bash

echo "Removing Node.js installed via NVM..."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if command -v nvm >/dev/null 2>&1; then
    nvm uninstall 24
    echo "Removed Node.js 24."
else
    echo "NVM not found, skipping node version removal."
fi

# Optional: Remove NVM entirely if you don't want it left behind
# rm -rf "$NVM_DIR"

echo "Node.js uninstalled."
