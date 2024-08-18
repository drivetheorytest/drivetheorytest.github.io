#!/bin/bash

# Check if a branch name is passed as an argument; if not, use 'main' by default
branch=${1:-main}

# Ask the user for a commit message
read -p "Enter commit message: " commit_message

# Add all changes
git add .

# Commit with the provided message
git commit -m "$commit_message"

# Push the changes to the specified branch
git push origin $branch

# Confirmation message
echo "Changes have been pushed to the '$branch' branch."
