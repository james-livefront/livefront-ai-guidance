# Markdown Linting Configuration

This project uses markdownlint to maintain consistent markdown formatting.

## Configuration Files

- `.markdownlint.json` - Linting rules configuration
- `.markdownlintignore` - Files and directories to ignore

## Disabled Rules

We've disabled several rules to allow for more flexible markdown authoring while maintaining readability:

- **MD009** - Trailing spaces (sometimes needed for line breaks)
- **MD013** - Line length (allows long lines for better readability)
- **MD022** - Blanks around headings (allows compact formatting)
- **MD024** - Duplicate headings (same content allowed in different sections)
- **MD026** - Trailing punctuation in headings (allows ? and !)
- **MD031** - Blanks around code fences (allows compact code blocks)
- **MD032** - Blanks around lists (allows compact lists)
- **MD036** - Emphasis as heading (allows bold text for emphasis)
- **MD047** - Single trailing newline (flexible file endings)
- **MD051** - Link fragments validation (allows flexible anchor links)

## Enabled Rules

Key rules we enforce:

- **MD004** - Unordered lists use dashes (-)
- **MD007** - Lists indent by 2 spaces
- **MD030** - Single space after list markers
- **MD041** - Files start with top-level heading
- **MD045** - Images must have alt text
- **MD048** - Code fences use backticks (```)
- **MD049/MD050** - Bold uses asterisks (**)

## Running the Linter

```bash
# Check all markdown files
npm run lint:md

# Auto-fix some issues (if using VS Code)
# Install the markdownlint extension and use:
# Cmd+Shift+P -> "Markdown: Fix all supported issues"
```

## Pre-commit Hook

The linter runs automatically on commit for staged markdown files. To bypass:

```bash
git commit --no-verify
```

## VS Code Integration

Install the [markdownlint extension](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) for real-time linting in VS Code.

The extension will automatically use our `.markdownlint.json` configuration.
