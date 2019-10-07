#!/bin/bash

if command -v podman >/dev/null; then
    echo 'Podman is already installed'
    exit 0
fi

apt-get update -y
apt-get install -y software-properties-common

# Add repository
add-apt-repository -y ppa:projectatomic/ppa

# Install Podman
apt-get install podman -y
