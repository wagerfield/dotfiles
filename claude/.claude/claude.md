# Claude

**CRITICAL: When updating this file, optimize for tool consumption:**

- **Imperative verbs only** - "Search existing patterns" not "Consider searching patterns"
- **Concrete behaviors** - specific actions that trigger during execution
- **Token efficiency** - maximum utility per word, eliminate abstract guidance
- **Test actionability** - would this instruction actually change tool behavior?

Every instruction must pass: "Does this make me DO something different?"

## Workflow

Whenever you need to perform multiple independent operations, invoke all relevant tools simultaneously rather than sequentially.

## Code Style

Write clean, concise code that prioritizes readability and maintainability:

- **Clarity First**: Self-documenting code with descriptive names
- **Modern Syntax**: Use latest language features that improve code quality
- **Functional Patterns**: Favor immutability, pure functions, and composition
- **Error Handling**: Explicit error handling with early returns
- **SOLID Principles**: Apply when they improve design
- **Minimal Dependencies**: Avoid unnecessary libraries and frameworks
- **Performance**: Write efficient code that scales well
- **Comments**: Only when code intent isn't obvious
- **Testing**: Write testable code with clear boundaries

## CLI Tools

High-performance tools available for code analysis and file operations:

- **`gh`** - GitHub CLI for repository operations, issues, and pull requests (`gh --help`)
- **`rg`** - ripgrep: blazingly fast recursive text search with regex support (`rg --help`)
- **`sg`** - ast-grep: structural code search, linting, and refactoring using AST patterns (`sg --help`)
- **`fd`** - modern file finder with intuitive syntax, faster than `find` (`fd --help`)
- **`fzf`** - interactive fuzzy finder for files, command history, and text (`fzf --help`)
- **`tree`** - directory structure visualization with filtering options (`tree --help`)
- **`imagemagick`** - comprehensive image manipulation suite (`convert --help`, `identify --help`)
- **`markdownlint`** - markdown linter and formatter (`markdownlint --help`)

## Markdown Conventions

Write markdown that conforms to `markdownlint` default rules:

- ATX heading style (# H1, ## H2, ### H3, etc.)
- Surround elements with blank lines
- Use consistent list formatting
- Specify language for all code blocks
- Always run `markdownlint <file> --disable MD013` to validate before completion

## Git Conventions

**Branch Naming:**

- Use `kebab-case` with descriptive names that reference issue numbers when applicable
- Apply prefixes for git flow workflows: `feature/auth-system`, `bugfix/header-overflow`, `hotfix/security-patch`
- Keep names under 50 characters for terminal readability

**Commit Messages:**

- Start with conventional commit types: `build, chore, ci, docs, feat, fix, style, refactor, perf, test`
- Write imperative present tense: "add feature" not "added feature"
- Lowercase first letter after colon, no period at end
- Keep each line under 60 characters
- Reference issues/PRs with `#123` or `closes #123`

**Commit Structure:**

```git
feat: add JWT authentication system

- Implement token validation middleware
- Create login/logout API endpoints
- Add protected route guards
- Update user session management

Closes #245
```

**Before Each Commit:**

- Run `git status` to verify staged changes
- Use `git diff --staged` to review exact changes
- Ensure commit contains related changes only

## PR Reviews

Always analyze implementation details, not just functionality:

- **Read existing codebase patterns first** - search for similar implementations before reviewing
- **Question every design choice** - propose cleaner alternatives with code examples
- **Examine test quality** - structure, mocking patterns, private method access approaches
- **Assess parameter design** - extensibility vs simplicity tradeoffs
- **Check method organization** - binding, arrow functions, factory patterns

Be specific and opinionated about code quality improvements.
