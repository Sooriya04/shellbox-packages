#!/usr/bin/env bash
echo "Installing nano 7.2..."

# Create a temporary directory for building
mkdir -p /tmp/nano-build
cd /tmp/nano-build

# Download
wget https://www.nano-editor.org/dist/v7/nano-7.2.tar.xz

# Extract
tar -xf nano-7.2.tar.xz
cd nano-7.2

# Configure, build, and install
./configure --prefix="${PREFIX}"
make
make install

echo "Nano installation complete."
