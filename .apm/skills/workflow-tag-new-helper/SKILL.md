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
1. Ensure all changes in the repository are complete and ready for committing.
2. Trigger the skill and follow the prompts:
   - Specify whether the change is a major, minor, or patch.
   - Enter an appropriate commit message when prompted.

### Output
The skill will:
- Create a commit with the specified message.
- Increment the version based on user input.
- Apply a new tag based on the incremented version.
- Output the following reminders:
  - The new tag applied.
  - Reminder to push the changes: `git push --follow-tags`.

### Files Used
- `scripts/increment_version.sh`: Extracts the latest tag, increments it based on version type, and returns the new tag.
- `scripts/create_commit_and_tag.sh`: Stages changes, generates a commit, applies the new tag, and outputs prompts for the user.