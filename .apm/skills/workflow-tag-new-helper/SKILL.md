---
name: workflow-tag-new-helper
description: |
  Automates git versioning workflow. Use this skill to:
  1. Ask the user whether to increment major, minor, or patch.
  2. Automatically retrieve the latest tag, apply a new version, and create the tag.
  3. Stage changes and generate a git commit with an appropriate message according to git commit message conventions from instructions/agents.md/claude.md.
  4. Remind the user to push the changes and tags.
---

## Usage Guide

### Prerequisites
Ensure the repository is a valid git repository, and you have permissions to commit and tag changes.

### Workflow
1. Find the latest tag in repository using `git describe --tags --abbrev=0`.
2. Ask user if all changes in repository are ready for commiting
3. Ask user if they want to increment major, minor, or patch version
4. Generate a commit message and follow git message convention

### Output
The skill will:
- Create a commit with the specified message.
- Increment the version based on user input.
- Apply a new tag based on the incremented version.
- Output the following reminders:
  - The new tag applied.
  - Reminder to push the changes: `git push --follow-tags`.
