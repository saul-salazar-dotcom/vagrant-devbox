#!/bin/bash

if ! command -v aws >/dev/null; then
    # Install AWS CLI
    apt-get update
    apt-get install -y awscli
fi

if ! command -v az >/dev/null; then
    # Install Azure
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash
fi

if ! command -v gcloud >/dev/null; then
    # Install Google Cloud SDK
    curl -sSL https://sdk.cloud.google.com | bash
fi

# Install DigitalOcean CLI
if ! command -v doctl >/dev/null; then
    snap install doctl
fi
