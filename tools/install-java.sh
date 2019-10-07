#!/bin/bash

# Install JDK 8 + Eclipse
apt-get update
apt-get install -y openjdk-8-jdk eclipse

if ! command -v maven >/dev/null; then
    # Install Maven
    apt-get update
    apt-get install -y mvn
fi

if ! command -v gradle >/dev/null; then
    # Install Gradle
    apt-get update
    apt-get install -y gradle
fi
