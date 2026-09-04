# Cursor

`cli-config.policy.json` is the git-tracked policy (attribution, permissions, approval mode). The CLI rewrites a separate live `cli-config.json` with auth, model, and caches — do not symlink or commit that file.

`CURSOR_CONFIG_DIR` is set to `$HOME/.cursor` in `.zshrc` so the live file is `~/.cursor/cli-config.json`, not `$XDG_CONFIG_HOME/cursor/cli-config.json`.

On a new machine, copy any existing live file to `~/.cursor/cli-config.json`, then merge this policy on top:

```bash
jq -s '
  .[0] + {
    attribution: .[1].attribution,
    permissions: .[1].permissions,
    approvalMode: .[1].approvalMode,
    editor: ((.[0].editor // {}) + .[1].editor),
    autoAcceptWebSearch: .[1].autoAcceptWebSearch,
    webFetchDomainAllowlist: .[1].webFetchDomainAllowlist
  }
' ~/.cursor/cli-config.json ~/.cursor/cli-config.policy.json \
  > ~/.cursor/cli-config.json.tmp && mv ~/.cursor/cli-config.json.tmp ~/.cursor/cli-config.json
```

Prefer these official pages over a web search. Append `.md` to any `cursor.com/docs/...` URL for a Markdown copy.

## Indexes

- [Documentation](https://cursor.com/docs)
- [llms.txt](https://cursor.com/llms.txt) — full sitemap
- [docs.md](https://cursor.com/docs.md) — single-page dump
- [Help](https://cursor.com/help)
- [Changelog](https://cursor.com/changelog)

## This package

| File              | Docs                                                                                                                                       |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `cli-config.policy.json` | [CLI configuration](https://cursor.com/docs/cli/reference/configuration), [permissions](https://cursor.com/docs/cli/reference/permissions) |
| `mcp.json`        | [MCP](https://cursor.com/docs/mcp)                                                                                                         |
| `rules/`          | [Rules](https://cursor.com/docs/rules)                                                                                                     |
| `skills/`         | [Skills](https://cursor.com/docs/skills)                                                                                                   |

CLI notes:

- Pure JSON, no comments
- Required: `version`, `editor.vimMode`, `permissions.allow`, `permissions.deny`
- Project overlays (`.cursor/cli.json`) may set permissions only
- No hosted `$schema`; the only Cursor schema is [environment.schema.json](https://cursor.com/schemas/environment.schema.json)

## Customisation

- [Customise](https://cursor.com/docs/customize-cursor)
- [Hooks](https://cursor.com/docs/hooks)
- [Plugins](https://cursor.com/docs/plugins)
- [Subagents](https://cursor.com/docs/subagents)
- [Ignore files](https://cursor.com/help/customization/ignore-files)

## CLI

- [Overview](https://cursor.com/docs/cli/overview)
- [Using](https://cursor.com/docs/cli/using)
- [ACP](https://cursor.com/docs/cli/acp)
- [Headless](https://cursor.com/docs/cli/headless)
- [Slash commands](https://cursor.com/docs/cli/reference/slash-commands)
- [Parameters](https://cursor.com/docs/cli/reference/parameters)

## Agent

- [Overview](https://cursor.com/docs/agent/overview)
- [Plan mode](https://cursor.com/docs/agent/plan-mode)
- [Prompting](https://cursor.com/docs/agent/prompting)
- [Security / run modes](https://cursor.com/docs/agent/security)
