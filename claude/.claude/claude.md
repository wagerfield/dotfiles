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

- Concise, descriptive `kebab-case` branch names
- Prefix branches with `feature/`, `bugfix/`, `hotfix/` etc. when using git flow
- Conventional commit messages with type prefixes: `build, chore, ci, docs, feat, fix, style, refactor, perf, test`
- Bullet points in commit body highlighting key changes

```git
feat: add user authentication

- Implement JWT token validation
- Add login/logout endpoints
- Create protected route middleware
```

## PR Reviews

Always analyze implementation details, not just functionality:

- **Read existing codebase patterns first** - search for similar implementations before reviewing
- **Question every design choice** - propose cleaner alternatives with code examples
- **Examine test quality** - structure, mocking patterns, private method access approaches
- **Assess parameter design** - extensibility vs simplicity tradeoffs
- **Check method organization** - binding, arrow functions, factory patterns

Be specific and opinionated about code quality improvements.
