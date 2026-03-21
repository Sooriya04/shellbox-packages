#!/usr/bin/env bash
echo "Removing nano..."
rm -rf "${PREFIX}/bin/nano"
rm -rf "${PREFIX}/share/nano"
rm -rf "${PREFIX}/share/man/man1/nano.1"
echo "Nano removed."
