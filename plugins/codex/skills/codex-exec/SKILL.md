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

Formulate a clear, specific request. Examples:
- "Review the authentication module for security vulnerabilities"
- "Analyze the database query patterns for performance issues"
- "Explain how the user registration flow works"

### 2. Set Working Directory

- Default: `$PWD`
- Custom: User-provided path

### 3. Execute & Monitor

```bash
codex exec --full-auto --sandbox read-only --cd /path/to/project "Your request"
```

Display output, progress, errors, and final results to user.

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
