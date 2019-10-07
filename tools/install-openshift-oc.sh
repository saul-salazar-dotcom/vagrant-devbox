#!/bin/bash
# Script to install OpenShift Origin Client Tools

if command -v oc >/dev/null; then
    echo 'OpenShift "oc" is already installed'
    exit 0
fi

# Download package
wget https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz 

# Extract package
tar -zvxf openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz

# Copy ‘oc’ command to ‘/usr/local/bin/’ directory
cd openshift-origin-client-tools-v3.9.0-191fece-linux-64bit
cp oc /usr/local/bin/
