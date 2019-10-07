#!/bin/bash

if command -v nvm >/dev/null; then
    echo 'NVM is already installed'
    exit 0
fi

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
