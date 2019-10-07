#!/bin/bash

if command -v dotnet >/dev/null; then
    echo 'Dotnet is already installed'
    exit 0
fi

# Register microsoft key and feed
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

## Install .net SDK
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.0
