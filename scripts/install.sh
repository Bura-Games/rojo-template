#!/bin/bash
# Installs wally packages and exports types

# Remove old packages folders
if [ -d "Packages" ]; then
    rm -rf "Packages"
fi
if [ -d "ServerPackages" ]; then
    rm -rf "ServerPackages"
fi

# Install packages
wally install

# If ServerPackages doesn't exist, create it
if [ ! -d "Packages" ]; then
    mkdir "Packages"
fi
if [ ! -d "ServerPackages" ]; then
    mkdir "ServerPackages"
fi

# Sourcemap generation
rojo sourcemap --output sourcemap.json default.project.json

# Fix the types (why is this not native???)
wally-package-types --sourcemap sourcemap.json Packages/
wally-package-types --sourcemap sourcemap.json ServerPackages/