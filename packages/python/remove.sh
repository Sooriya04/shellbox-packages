#!/usr/bin/env bash

echo "Removing Python 3.11..."
# Remove the main executable
rm -f "${PREFIX}/bin/python"
rm -f "${PREFIX}/bin/python3"
rm -f "${PREFIX}/bin/python3.11"
# Remove standard library and includes if they were installed loosely
rm -rf "${PREFIX}/lib/python3.11"
rm -rf "${PREFIX}/include/python3.11"
echo "Python 3.11 uninstalled successfully."
