# Fix GitHub Issue

Analyze and fix the GitHub issue: $ARGUMENTS

## Process

1. **Fetch issue details**
   - Run `gh issue view $ARGUMENTS` to understand the problem
   - Note acceptance criteria and any mentioned edge cases

2. **Analyze the codebase**
   - Search for relevant files using `rg`, `fd`, or `sg`
   - Read related code to understand current implementation
   - Check for existing tests that might be affected

3. **Plan the solution**
   - Identify files that need changes
   - Consider potential side effects
   - Determine if new tests are needed

4. **Implement the fix**
   - Make necessary code changes
   - Follow existing code patterns and conventions
   - Add or update tests as needed

5. **Verify the solution**
   - Run relevant test suites
   - Ensure code passes linting (`markdownlint`, language-specific linters)
   - Manually test the fix if applicable

6. **Create the commit**
   - Stage all relevant changes
   - Write descriptive commit message following conventions:
     ```git
     fix: [brief description of what was fixed]

     - [specific change 1]
     - [specific change 2]
     
     Fixes #$ARGUMENTS
     ```

7. **Create pull request**
   - Push changes to a new branch
   - Create PR with `gh pr create`
   - Reference the issue in PR description

## Notes

- If the issue is unclear, ask for clarification before proceeding
- For complex issues, break down the work and communicate progress
- Always verify that tests pass before creating the PR