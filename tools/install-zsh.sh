#!/bin/bash

# Install ZSH
apt-get update
apt-get install zsh

# Change default shell of the root user to zsh
chsh -s /usr/bin/zsh root

# Install Oh My ZSH & dependencies
apt-get update
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
