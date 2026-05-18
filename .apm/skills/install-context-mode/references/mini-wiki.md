# Context Mode skill mini wiki

## Links

- [Context Mode Github](https://github.com/mksglu/context-mode)
- [Context Mode Readme](https://raw.githubusercontent.com/mksglu/context-mode/refs/heads/main/README.md)

## Install (last updated 2026-05-18)

### Opencode

Installation

```bash
npm install -g context-mode

# Optional, inform user of optionallity
cp node_modules/context-mode/configs/opencode/AGENTS.md AGENTS.md
```

Configuration

```json
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "context-mode": {
      "type": "local",
      "command": ["context-mode"],
      "environment": {
        "CONTEXT_MODE_IDLE_TIMEOUT_MS": "900000"
      }
    }
  },
  "plugin": ["context-mode"]
}
```
