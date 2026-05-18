---
description: Changelog entry style rules enforced on changelog.md files.
applyTo: "*/changelog.md"
---

# Changelog Style Rules

- Add new entries to the end of the file
- Check todays date, if not present add a new section with ## YYYY-MM-DD
- Check for a session section (### Session N), if not present add a new section with the next session number
- Executive summary: 1-2 sentences at the top summarizing the overall changes in this changelog.
- Bullet format: `(commit hash): one-liner about why`
- Bullets without commits: imperative verb, no prefix.
- Bullet should be informative, concise, and less or around 80 characters. Use caveman skill if available to shorten.
- Focus on why, not what — explain intent/reason for the change, not just the change itself.
