#!/bin/bash
# Script to install docker compose

if command -v docker-compose >/dev/null; then
    echo 'Docker Compose is already installed'
    exit 0
fi

# Get latest version from https://github.com/docker/compose/releases
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

# Fix: /usr/local/bin/docker-compose: Permission denied
chmod +x /usr/local/bin/docker-compose
