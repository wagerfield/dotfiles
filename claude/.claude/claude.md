# Claude

**When updating this file:**

- Think carefully from the perspective of the tool consuming this documentation
- Prioritize what's most functionally useful over what might seem comprehensive
- Make well-reasoned recommendations based on practical utility
- Focus on actionable information that improves code quality and workflow efficiency

Prompt with: "What works best for you as the tool?" to activate this perspective.

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

- **`rg`** - ripgrep: blazingly fast recursive text search with regex support (`rg --help`)
- **`sg`** - ast-grep: structural code search, linting, and refactoring using AST patterns (`sg --help`)
- **`fd`** - modern file finder with intuitive syntax, faster than `find` (`fd --help`)
- **`fzf`** - interactive fuzzy finder for files, command history, and text (`fzf --help`)
- **`tree`** - directory structure visualization with filtering options (`tree --help`)
- **`imagemagick`** - comprehensive image manipulation suite (`convert --help`, `identify --help`)
- **`markdownlint`** - markdown linter and formatter (`markdownlint --help`)

## Git Conventions

- Concise, descriptive `kebab-case` branch names
- Prefix branches with `feature/`, `bugfix/`, `hotfix/` etc. when using git flow
- Conventional commit messages with bullet points in commit body highlighting key changes:

  ```git
  feat: add user authentication

  - Implement JWT token validation
  - Add login/logout endpoints
  - Create protected route middleware
  ```

## Markdown Conventions

Write markdown that conforms to `markdownlint` default rules:

- ATX heading style (# H1, ## H2, ### H3, etc.)
- Surround elements with blank lines
- Use consistent list formatting
- Specify language for all code blocks
- Always run `markdownlint <file> --disable MD013` to validate before completion
