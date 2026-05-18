#!/bin/bash

# Extract the latest tag (format: v<major>.<minor>.<patch>)
LATEST_TAG=$(git describe --tags --abbrev=0 2>/dev/null)

# Default to "v0.0.0" if no tags exist
if [[ -z "$LATEST_TAG" ]]; then
  LATEST_TAG="v0.0.0"
fi

# Split the version into major, minor, and patch using regex
VERSION_REGEX="^v([0-9]+)\.([0-9]+)\.([0-9]+)"
if [[ $LATEST_TAG =~ $VERSION_REGEX ]]; then
  MAJOR=${BASH_REMATCH[1]}
  MINOR=${BASH_REMATCH[2]}
  PATCH=${BASH_REMATCH[3]}
else
  echo "Error: Invalid tag format. Expected v<major>.<minor>.<patch>."
  exit 1
fi

# Prompt the user for the version type to bump
echo "Current version: $LATEST_TAG"
read -p "Bump version (major/minor/patch)? " VERSION_TYPE

# Increment the appropriate part of the version
case "$VERSION_TYPE" in
  major)
    ((MAJOR++))
    MINOR=0
    PATCH=0
    ;;
  minor)
    ((MINOR++))
    PATCH=0
    ;;
  patch)
    ((PATCH++))
    ;;
  *)
    echo "Invalid input: $VERSION_TYPE. Use 'major', 'minor', or 'patch'."
    exit 1
    ;;
esac

# Construct the new tag
NEW_TAG="v$MAJOR.$MINOR.$PATCH"
echo "New version: $NEW_TAG"
echo "$NEW_TAG"