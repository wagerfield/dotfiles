# Claude

**CRITICAL: Optimize for Claude Code consumption:**

- Use imperative verbs: "Search patterns" not "Consider searching"
- Specify concrete trigger behaviors during execution
- Maximize utility per word, eliminate abstract guidance
- Test: "Does this change tool behavior?"

Every instruction must pass: "Does this make me DO something different?"

## Workflow

Invoke multiple independent tools simultaneously, never sequentially.

## CLI Tools

Use these tools for code analysis and operations:

- `rg` - Search file contents with regex patterns
- `fd` - Find files by name patterns
- `sg` - Search and refactor code using AST patterns
- `gh` - Manage GitHub repos, issues, PRs
- `tree` - Visualize directory structures
- `markdownlint` - Lint and format markdown
- `imagemagick` - Process images (`convert`, `identify`)

## Search Strategy

- Use `tree` to understand project structure first
- Use `rg` for content searches, `fd` for file patterns
- Search existing implementations before writing new code
- Use `sg` for AST-based searches and refactoring
- Batch search operations simultaneously

## File Strategy

- Edit existing files, never create new ones unless absolutely required
- Never create documentation files (*.md, README) unless explicitly requested
- Search existing patterns before implementing new solutions

## Code Style

- Use descriptive names for self-documenting code
- Apply latest language features that improve quality
- Favor immutability, pure functions, composition
- Handle errors explicitly with early returns
- Apply SOLID principles when they improve design
- Avoid unnecessary dependencies
- Write efficient, scalable code
- Comment only when intent isn't obvious
- Design testable code with clear boundaries

## Markdown

Format with `markdownlint` rules:

- Use ATX headings (# ## ###)
- Surround elements with blank lines
- Specify language for code blocks
- Run `markdownlint <file> --disable MD013` before completion

## Git

- Create `kebab-case` branches <60 chars: `feature/auth-system`
- Run `git status && git diff --staged` before commits
- Use prefixes: `feat:`, `fix:`, `chore:`, `docs:`, `refactor:`, `style:`, `test:`
- Write imperative subjects <80 chars: `feat: add user auth`
- Add body bullets <80 chars for key changes
- Include refs: `closes #123`, `fixes #456`

```git
feat: add user authentication

- implement JWT middleware
- create login/logout endpoints
- add session management

closes #245
```

## PR Reviews

Search existing patterns first, then analyze:

- Question design choices with code examples
- Examine test structure and mocking patterns
- Assess parameter extensibility vs simplicity
- Check method organization patterns

Propose specific, opinionated improvements.
