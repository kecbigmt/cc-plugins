---
name: verifying-implementation
description: Guides developer verification before handoff. Use when completing implementation, preparing for acceptance testing, or self-reviewing work before commit or PR.
---

# Verifying Implementation

Developer verification ensures the implementation is ready for acceptance testing.

## Verification Checklist

Copy and track progress:

```
Developer Verification:
- [ ] All acceptance criteria manually tested
- [ ] Error cases verified
- [ ] Existing functionality not broken
- [ ] All automated tests pass
- [ ] Linting passes
- [ ] No debug prints left behind
- [ ] No TODO without context
- [ ] Story log updated
```

## Step-by-Step Process

### 1. Manual Testing

For each acceptance criterion:
- Set up the **Given** precondition
- Execute the **When** action
- Verify the **Then** result
- Document observations

### 2. Automated Tests

Run the project's test suite:
```bash
# Example commands (adapt to your project)
npm test
deno task test
pytest
```

### 3. Code Quality

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

### 4. Update Story Log

Fill in "Acceptance Checks" section:
```markdown
### Acceptance Checks

**Status: Pending Product Owner Review**

Developer verification completed:
- Tested all 5 acceptance criteria manually
- Verified error messages display correctly
- Confirmed existing features still work
- All 23 tests pass
```

## Important

- **Do NOT check acceptance criteria checkboxes** — that is the product owner's responsibility
- Set status to "Pending Product Owner Review"
- Note any observations or edge cases discovered
