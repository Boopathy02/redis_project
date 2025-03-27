#!/bin/bash

# Update and install unzip and curl if not already installed
sudo apt update
sudo apt install -y unzip curl

# Fetch the latest version of AWS CLI v2 from AWS
LATEST_VERSION_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

# Download AWS CLI v2
curl "$LATEST_VERSION_URL" -o "awscliv2.zip"

# Unzip the downloaded file
unzip awscliv2.zip

# Run the installation script
sudo ./aws/install

# Verify the installation
aws --version

# Cleanup the downloaded files
rm -rf awscliv2.zip aws
