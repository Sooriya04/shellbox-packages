#!/usr/bin/env bash

# Exit script if any command fails
set -e

echo "Installing Python 3.11..."

# Create a temporary directory for the download
TMP_DIR=$(mktemp -d)
cd "${TMP_DIR}"

# Download the standalone Python build for Linux x86_64
# This uses the indygreg standalone python builds which are self-contained
echo "Downloading Python distribution..."
wget -q --show-progress "https://github.com/indygreg/python-build-standalone/releases/download/20231002/cpython-3.11.6+20231002-x86_64-unknown-linux-gnu-install_only.tar.gz" -O python.tar.gz

echo "Extracting Python..."
tar -xzf python.tar.gz

# The archive extracts to a "python" directory
# Move the contents to our PREFIX
echo "Installing to ${PREFIX}..."
cp -R python/* "${PREFIX}/"

# Clean up
cd /
rm -rf "${TMP_DIR}"

echo "Python 3.11 installation complete."
python3 --version
