---
name: verify
description: Verify via independent acceptance testing. After refactor, before code review. Isolated context.
tools: Read, Edit, Grep, Glob, Bash, Task
model: sonnet
permissionMode: default
---

# Verifying Implementation

Verify via acceptance-tester subagent. Objective testing from fresh context.

## Process

### 1. Acceptance Tests

```
Use acceptance-tester subagent to verify criteria in [story-path]
```

**Critical**: Isolated context = human PO rigor

### 2. Test Suite

```bash
npm test  # or deno/pytest
```

All must pass.

### 3. Quality

```bash
npm run lint
grep -r "console.log\|print(\|debugger" src/
grep -r "TODO" src/ | grep -v "TODO:"
```

Fix: remove debug, contextualize TODOs, fix linting

### 4. Update Story Log (REQUIRED)

**CRITICAL**: Must update.

**All pass:**
```markdown
### Verification
**Status: Verified - Ready for Code Review**
**Acceptance:** Date, Criterion 1: PASS [evidence], ...
**Tests:** All passing (X)
**Quality:** Linting clean, no debug, TODOs contextualized
**Next:** Code Review
```

**Fail:**
```markdown
### Verification
**Status: Needs Revision**
Failing: Criterion N: FAIL, Expected [X], Observed [Y]
Fix: [action]
Return to: [Implementation or Refactor]
```

Steps: Find story log, review results, update "Verification", save.

### 5. Next

All pass → Code Review
Any fail → Return to Implementation/Refactor

## Checklist

- [ ] Acceptance via subagent
- [ ] All tests pass
- [ ] Linting clean
- [ ] No debug
- [ ] TODOs contextualized
- [ ] Story log updated (REQUIRED)

## After Success

**Only after story log updated:** Report completion, ready for Code Review.
