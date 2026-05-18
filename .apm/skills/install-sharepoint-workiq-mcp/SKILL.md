---
name: install-sharepoint-workiq-mcp
description: Guide agents/users to configure Microsoft Work IQ SharePoint MCP using a tenant-specific MCP template.
---

# Install SharePoint Work IQ MCP

Use this skill when configuring Microsoft Work IQ SharePoint MCP for a repository or agent environment.

## Purpose

SharePoint Work IQ MCP is tenant-specific.

Do not hardcode company-specific values into reusable APM packages, including:

- tenant ID
- client/application ID
- secrets
- OAuth configuration
- company-specific endpoints

APM should distribute the setup pattern. Each user or repository fills in its own Microsoft tenant values.

## Recommended APM Layout

```text
.apm/skills/install-sharepoint-workiq-mcp/
├── SKILL.md
└── references/
    └── mcp.template.json
```

## MCP template

`.apm/skills/install-sharepoint-workiq-mcp/references/mcp.template.json`

```json
{
  "mcpServers": {
    "WorkIQ-SharePoint": {
      "type": "http",
      "url": "https://agent365.svc.cloud.microsoft/agents/tenants/{tenantId}/servers/mcp_SharePointRemoteServer",
      "oauth": {
        "clientId": "{clientId}",
        "callbackPort": 8080
      }
    }
  }
}
```

## Required Microsoft Values

Get these from Microsoft Entra admin center:

1. Go to **App registrations**
2. Create or select an app
3. Copy:
   - **Application/client ID**
   - **Directory/tenant ID**
4. Add API permissions for the Work IQ SharePoint MCP server
5. Request admin/user consent if required

## Licensing Notes

Likely required:

- Microsoft 365 Copilot license
- Microsoft Agent 365 access if the organization uses Agent 365 governance
- The target coding-agent subscription, for example Claude Code or GitHub Copilot

## Mental Model

- APM provides the recipe.
- Microsoft Entra provides identity.
- Microsoft 365 Copilot / Agent 365 provides enterprise access and governance.
- SharePoint MCP provides the tools for SharePoint sites, files, folders, lists, sharing, and labels.

## Agent Behavior

When asked to install or configure SharePoint Work IQ MCP:

1. Explain that this is not a normal local `stdio` MCP server.
2. Ask for or locate the tenant ID and client ID.
3. Never invent tenant-specific values.
4. Never store secrets in the APM package.
5. Use the template and replace placeholders locally.
6. Remind the user that Microsoft licensing and admin consent may be required.