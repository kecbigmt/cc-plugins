---
name: codex-exec
description: Execute codex CLI as sub-agent for thorough code reviews (codex's specialty), alternative approaches when stuck, or complex problems requiring extended investigation. Note that inference takes significant time.
---

# Codex Execution Skill

## Command Structure

Execute codex using the following command pattern:

```bash
codex exec --full-auto --sandbox read-only --cd <project_directory> "<request>"
```

### Parameters

- `--full-auto`: Enables autonomous operation without manual intervention
- `--sandbox read-only`: Runs in safe read-only mode (no file modifications)
- `--cd <directory>`: Specifies the project directory to analyze
- `<request>`: The natural language request describing what to analyze

## Execution Guidelines

### 1. Determine the Request

Based on user input, formulate a clear, specific request for codex. Examples:
- "Review the authentication module for security vulnerabilities"
- "Analyze the database query patterns for performance issues"
- "Explain how the user registration flow works"
- "Find potential bugs in error handling code"

### 2. Set Working Directory

Use the current working directory or a user-specified project path:
- Default: Current working directory (`$PWD`)
- Custom: User-provided path

### 3. Execute Codex

Run the codex command with proper parameters:

```bash
codex exec --full-auto --sandbox read-only --cd /path/to/project "Your request here"
```

### 4. Monitor Output

- Display real-time output to the user
- Show execution progress
- Report any errors or issues
- Present the final analysis results

## Example Usage Patterns

### Code Review
```bash
codex exec --full-auto --sandbox read-only --cd . "Review the recent changes for code quality and potential bugs"
```

### Architecture Analysis
```bash
codex exec --full-auto --sandbox read-only --cd . "Analyze the overall architecture and identify design patterns used"
```

### Bug Investigation
```bash
codex exec --full-auto --sandbox read-only --cd . "Investigate why the user authentication is failing intermittently"
```

### Refactoring Suggestions
```bash
codex exec --full-auto --sandbox read-only --cd . "Suggest refactoring opportunities to improve code maintainability"
```

## Prerequisites

Ensure the `codex` CLI tool is installed and available in PATH:

```bash
which codex
```
