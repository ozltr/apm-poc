
# Commit Messages (Conventional Commits)

Format:
<type>(optional scope): short summary

- First line ≤50 chars
- Use imperative mood ("add", "fix", not "added")
- No period at end

### Types

- feat     → new feature or capability
- fix      → bug fix
- docs     → documentation only
- style    → formatting, no logic change
- refactor → code change without behavior change
- perf     → performance improvement
- test     → adding/updating tests
- build    → build system or dependencies
- ci       → CI/CD changes
- chore    → maintenance, cleanup, non-functional
- revert   → revert previous commit
- If unclear → default to `chore`

### Scope (optional)

Use when it adds clarity:
- feat(router): add skill matching logic
- fix(inbox): handle empty folder case

### Body (optional)

Add if needed:
- explain *why*, not what
- wrap at ~72 chars

### Examples

- feat(router): add skill selection logic
- fix(inbox): prevent duplicate processing
- docs(ai-plane): update architecture section
- refactor(skills): simplify skill loading
- chore(repo): clean up stale branches