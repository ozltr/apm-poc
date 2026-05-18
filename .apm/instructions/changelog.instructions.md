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


## Example:

```md
## Date May 13, 2026

### Session 1

Added MemeSat meeting notes for Observability area. Expanded workspace content for future reference tracking.

- (2d5ebdf): Added meeting-13-05-2026-1.md for MemeSat
- Added meeting-13-06-2026-2.md for future meeting tracking
- (6c8ba92): Refactored memesat/status.md to simplify structure
- (412d71f): Enhanced status summary with actionable priorities
- (ef39363): Introduced observability program notes, memesat content
- (ef473a6): Integrated context-mode agent for structured extensions
```