---
name: commit
description: Review local git changes, split them into related Conventional Commits, and write a why-focused body with Fixes/Closes or Shortcut [sc-123] footers.
disable-model-invocation: true
---

# Git Commit

Review the requested changes, group and stage related work, then commit.

Never push. Never commit unrelated files together.

## Scope

Parse an optional arg after `/commit`:

| Arg       | Include                         |
| --------- | ------------------------------- |
| `staged`  | Index only                      |
| `tracked` | Staged + unstaged tracked files |
| `all`     | Staged + unstaged + untracked   |

Default:

1. Staged files exist → `staged`
2. Nothing staged → ask: `tracked` or `all`
3. Chosen scope is empty → stop and say so

`staged` may still be split: unstage, then restage related hunks/files.

## Review

Inspect only the chosen scope: `git status`, `git diff --cached`, `git diff`, untracked files as needed.

- Group by one concern
- Split when types differ, behaviour is unrelated, or a revert/chore is mixed with a feat/fix
- Keep tests or docs with the change it covers
- Use `git add -p` when only some hunks in a file belong together

Then:

- **One group, already staged** → commit
- **Split or restage needed** → show the plan (files + proposed subjects), then commit after a short confirmation
- **Ambiguous ticket or secret** → ask

## Message

```text
type(scope): imperative summary

- bullet one
- bullet two

Fixes #123
```

**Header** (required):

- Types: `feat` `fix` `docs` `style` `refactor` `perf` `test` `build` `ci` `chore` `revert`
- Scope: optional short noun (`auth`, `cli`). Omit if there is no natural scope
- Summary: imperative, lowercase, no trailing period, ~50–72 chars
- Breaking: `feat(api)!: ...` and a `BREAKING CHANGE:` footer

**Body** (optional):

- Blank line after the header
- Bullets for the non-obvious changes or motivation
- Why over what — do not list files
- Omit when the subject is enough

**Footer** (optional):

Add _only_ if a real ticket is known from the branch, diff, or conversation

- GitHub: `Fixes #123` (bug) or `Closes #123` (work item)
- Related GitHub issue, not closing: `Refs: #123`
- Shortcut: `[sc-12345]` — the id is what links, not `Refs`/`Fixes`
- Never invent a ticket. Never use `implements`

## Commit

For each group: stage only those paths, then:

```bash
git commit -m "$(cat <<'EOF'
type(scope): summary

- why or notable change

Fixes #123
EOF
)"
```

- Do not push, force, or amend unless the user asked
- Do not skip hooks
- Do not commit secrets (`.env`, keys, credentials)
- Do not pass `--trailer` (including `Made-with: Cursor`)
- Do not add `Co-authored-by` unless asked

## Report

After committing, list each new commit:

```text
- abc1234 type(scope): summary
```

Use the short hash and the subject only. Then note anything left uncommitted.
