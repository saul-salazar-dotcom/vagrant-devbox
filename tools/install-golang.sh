#!/bin/bash

if command -v go >/dev/null; then
    echo 'Go is already installed'
    exit 0
fi

# Install Go
wget -q https://storage.googleapis.com/golang/getgo/installer_linux
chmod +x installer_linux 
./installer_linux
