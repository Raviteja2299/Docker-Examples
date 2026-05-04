#!/bin/bash

##############################################
# Author: Ravi Teja
# Date: 2024-06
# Description: This script sets up Docker on Ubuntu.
# Make the script executable and run it to install Docker on your Ubuntu system.
# chmod +x install_docker_ubuntu.sh
#################################################

set -e
echo "Installing Docker on Ubuntu"

# remove old versions of Docker if they exist
sudo apt-get remove -y docker docker-engine docker.io containerd runc || true

# Update packages
sudo apt-get update

# Install dependencies
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set Up repository
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine

sudo apt-get update 
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start Docker service
sudo systemctl start docker
sudo Systemctl enable docker

# Add user to the group
sudo usermod -aG docker $USER

echo "Docker installation completed successfully! Please log out and log back in to apply the group changes."

# verify installation

docker --version || sudo docker --version

echo "Docker installed successfully!"


