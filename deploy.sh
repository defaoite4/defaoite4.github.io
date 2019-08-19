#!/bin/bash

# Usage:
# ./deploy.sh

echo -e "Deploying updates to GitHub..."

# Blow away docs folder
rm -R docs

# Build the project.
hugo

# Add content changes to git.
git add -A

# Commit content changes.
config_msg="Adding new content `date`"
echo "$config_msg"
git commit -m "$config_msg"

# Push content source
git push origin master
