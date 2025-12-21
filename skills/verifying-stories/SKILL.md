---
name: verifying-stories
description: Guides developer verification before handoff. Use when completing implementation, preparing for acceptance testing, or self-reviewing work before commit or PR.
---

# Verifying Implementation

Developer verification ensures the implementation is ready for acceptance testing.

## Verification Approach

The approach should be defined at the **Define** stage in the story log. Options vary by project type:

| Project Type | Verification Options |
|--------------|---------------------|
| CLI | Direct command execution, output comparison |
| API | curl/httpie requests, API testing tools |
| Web UI | E2E tests (Playwright, Cypress), browser MCP tools |
| Mobile | Device/emulator testing, available MCP tools |
| Library | Unit tests, integration tests |

**If unsure**: Ask the product owner which approach fits best.

**Use available tools**: If MCP tools or skills for testing are available, use them.

## Verification Checklist

Adapt based on the verification approach defined in the story:

```
Developer Verification:
- [ ] Acceptance criteria verified (per defined approach)
- [ ] Error cases verified
- [ ] Existing functionality not broken
- [ ] All automated tests pass
- [ ] Linting passes
- [ ] No debug prints left behind
- [ ] No TODO without context
- [ ] Story log updated
```

## Automated Tests

Run the project's test suite:
```bash
# Example commands (adapt to your project)
npm test
deno task test
pytest
```

### E2E Tests for Verification

For UI-based projects, consider writing E2E tests:
- Useful for repeatable verification
- Discuss with PO whether to commit them (maintenance cost vs value)

## Code Quality

```bash
# Linting (adapt to your project)
npm run lint
deno lint
ruff check .
```

Check for:
- No `console.log`, `print()`, or debug statements
- No uncontextualized `TODO` comments
- No commented-out code blocks

## Update Story Log

Fill in "Acceptance Checks" section:
```markdown
### Acceptance Checks

**Status: Pending Product Owner Review**

Developer verification completed:
- [Describe how each criterion was verified]
- [Note verification approach used]
- [List any observations or limitations]
```

## Important

- **Do NOT check acceptance criteria checkboxes** — that is the product owner's responsibility
- Set status to "Pending Product Owner Review"
- Note any observations or edge cases discovered
- If verification is limited, explain what was and wasn't verifiable
