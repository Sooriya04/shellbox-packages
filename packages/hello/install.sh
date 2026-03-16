#!/usr/bin/env bash
echo "Installing hello world test..."
echo "Hello from ShellBox!" > "${PREFIX}/bin/hello"
chmod +x "${PREFIX}/bin/hello"
echo "Installation complete."
