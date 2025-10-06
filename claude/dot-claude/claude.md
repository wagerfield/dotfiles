# Claude

**CRITICAL: Optimize for Claude Code consumption:**

- Use imperative verbs: "Search patterns" not "Consider searching"
- Specify concrete trigger behaviors during execution
- Maximize utility per word, eliminate abstract guidance
- Test: "Does this change tool behavior?"

Every instruction must pass: "Does this make me DO something different?"

## Workflow

Invoke multiple independent tools simultaneously, never sequentially.

## Accuracy

**Verify before stating facts:**

- Use WebSearch/WebFetch before claiming library features, API behaviors, or tool capabilities
- Read documentation, source code, or package.json before describing what code does
- State "I need to verify this" instead of guessing
- Distinguish certainty levels:
  - "This file shows X" (observable)
  - "Documentation states X" (verified)
  - "I'm unsure, let me check X" (uncertain)
- Never infer purpose, features, or relationships without evidence
- Say "I don't know" when you don't know

## CLI Tools

Use these tools for code analysis and operations:

- `rg` - Search file contents with regex patterns
- `fd` - Find files by search patterns and paths
- `sg` - Search and refactor code using AST patterns
- `yq` - Process YAML, JSON, XML and CSV files
- `gh` - Manage GitHub repos, issues, PRs
- `tree` - Visualize directory structures
- `dpdm` - Analyze TypeScript and JavaScript dependencies
- `imagemagick` - Process images (`convert`, `identify`)
- `markdownlint` - Lint and format markdown
- `prettier` - Format code across multiple languages

## MCP Servers

- `language-server` - Get symbol definitions, hover info, diagnostics, references, and rename symbols across codebase
- `context7` - Resolve library IDs and fetch up-to-date documentation

## Search Strategy

- Use `tree` to understand project structure first
- Prioritize `language-server` MCP tools for supported languages over CLI alternatives
- Use `rg` for content searches, `fd` for file patterns
- Search existing implementations before writing new code
- Use `sg` for AST-based searches and refactoring
- Batch search operations simultaneously

## File Strategy

- Prefer editing existing files over creating new ones
- Locate similar implementations and follow their patterns

## Testing

- Discover existing test patterns and follow their structure
- Run tests before and after changes to verify functionality
- Maintain green test status throughout development

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

## Development Philosophy

**Always be objective and honest about code quality:**

- Question whether changes are genuine improvements
- Prefer simple, readable solutions over clever abstractions
- Call out when complexity doesn't justify benefits
- Challenge premature optimization and over-engineering
- Consider maintenance burden vs feature value
- Evaluate type safety and performance impact
- Test: "Does this make the code meaningfully better?"

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
