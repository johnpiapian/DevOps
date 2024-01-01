#!/bin/bash

## Set up Git
# Set up Git credentials
read -p "Enter your Git username: " git_username
read -sp "Enter your Git password: " git_password

# Create .git-credentials file
echo "https://$git_username:$git_password@github.com" > ~/.git-credentials

# Configure Git to use credential store
git config --global credential.helper store

echo -e "\nGit credentials set up successfully."