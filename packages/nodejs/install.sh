#!/usr/bin/env bash

# Exit script if any command fails
set -e

echo "Installing NodeJS 20.11.0..."

# Create a temporary directory for the download
TMP_DIR=$(mktemp -d)
cd "${TMP_DIR}"

# Download official Node.js precompiled binaries for Linux x64
echo "Downloading NodeJS distribution..."
wget -q --show-progress "https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz" -O node.tar.xz

echo "Extracting NodeJS..."
tar -xf node.tar.xz

# The archive extracts to "node-v20.11.0-linux-x64"
echo "Installing to ${PREFIX}..."
# Copy the bin, include, lib, and share directories to PREFIX
cp -R node-v20.11.0-linux-x64/* "${PREFIX}/"

# Clean up
cd /
rm -rf "${TMP_DIR}"

echo "NodeJS 20.11.0 installation complete."
node --version
npm --version
