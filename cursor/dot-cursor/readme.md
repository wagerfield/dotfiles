# Cursor

`cli-config.json` is strict JSON. The CLI rejects comments and strips unknown fields, so docs cannot live in that file.

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
| `cli-config.json` | [CLI configuration](https://cursor.com/docs/cli/reference/configuration), [permissions](https://cursor.com/docs/cli/reference/permissions) |
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
