#!/bin/bash
# Script to install robo 3T (formerly robomongo)

# Get latest version from https://github.com/Studio3T/robomongo/releases
curl -L https://github.com/Studio3T/robomongo/releases/download/v1.3.1/robo3t-1.3.1-linux-x86_64-7419c406.tar.gz

# Extract it
tar -xvzf robo3t-1.3.1-linux-x86_64-7419c406.tar.gz

# Create directory
mkdir /usr/local/bin/robomongo

# Copy its contents to /usr/local/bin
cp -a robo3t-1.3.1-linux-x86_64-7419c406/* /usr/local/bin/robomongo

# Remove extracted directory
rm -rf robo3t-1.3.1-linux-x86_64-7419c406/*

# Fix: /usr/local/bin/docker-compose: Permission denied
chmod +x /usr/local/bin/docker-compose
