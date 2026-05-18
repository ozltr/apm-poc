#!/bin/bash

# Check for an untracked or modified file in the git repository
if [[ -n "$(git status --porcelain)" ]]; then
  echo "Staging all changes..."
  git add .
else
  echo "No changes detected. Exiting..."
  exit 1
fi

# Prompt the user for a commit message
read -p "Enter a commit message: " COMMIT_MSG

# Create the commit
if [[ -n "$COMMIT_MSG" ]]; then
  git commit -m "$COMMIT_MSG"
  echo "Commit created: $COMMIT_MSG"
else
  echo "Error: Commit message cannot be empty."
  exit 1
fi

# Call version increment script to retrieve the new tag
NEW_TAG=$(./scripts/increment_version.sh)

# Create a tag with the new version
if [[ -n "$NEW_TAG" ]]; then
  git tag "$NEW_TAG"
  echo "Tag applied: $NEW_TAG"
fi

# Reminder to push tags
echo "Don't forget to push your changes and tags:"
echo "git push --follow-tags"