#!/bin/bash
######################################
# Author: Ravi Teja
# Description: This script sets up Docker on MacOS.
# Make the script executable and run it to install Docker Desktop on your Mac.
# chmod +x install_docker_mac.sh
######################################


set -e

echo "Setting up Docker on MacOS..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Brew
brew update

# install Docker Desktop

brew install --cask docker

echo "Starting Docker Desktop"

open /Applications/Docker.app

sleep 30

# verify installation

if command -v docker &> /dev/null; then
    docker --version
    echo "Docker installed successfully!"
else
    echo "Docker installation failed."
    exit 1
fi