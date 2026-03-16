#!/usr/bin/env bash

echo "Removing NodeJS 20.11.0..."
rm -f "${PREFIX}/bin/node"
rm -f "${PREFIX}/bin/npm"
rm -f "${PREFIX}/bin/npx"
rm -rf "${PREFIX}/lib/node_modules"
rm -rf "${PREFIX}/include/node"
echo "NodeJS 20.11.0 uninstalled successfully."
