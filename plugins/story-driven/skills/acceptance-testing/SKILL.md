---
name: acceptance-testing
description: Guide human PO through manual acceptance testing. Optional - use when PO wants manual verification before merge.
---

# Human Acceptance Testing

Guide human PO through manual testing (optional step).

## When Used

PO decides based on:
- Trust in AI verification (verify phase passed)
- Risk level
- UI/UX validation needs

**Key**: AI verify provides acceptance-test rigor. Manual testing is optional.

## Process

### 1. Find Story

```bash
ls docs/stories/**/*.story.md
```

### 2. Test Each Criterion

Guide PO:

```
Criterion [N]:

Given: [precondition]
When: [action]
Then: [expected]

Steps:
1. [Setup - specific]
2. [Action - specific]
3. [Verify - specific]
```

Use `AskUserQuestion`: Pass / Fail / Blocked

### 3. Update Story Log (REQUIRED)

**All pass:**
```markdown
### Acceptance Checks

**Status: Accepted**

AI: Passed
Manual: Passed
By: [PO]
Date: [date]

Ready for merge.
```

**Any fail:**
```markdown
### Acceptance Checks

**Status: Needs Revision**

AI: Passed
Manual: Failed

Failing: Criterion N
Expected: [X]
Observed: [Y]

Fix: [action]
Return to: Implementation
```

## Guidelines

Be specific: "Click Export, select CSV, verify columns" not "Test feature"

Provide context: why matters, what AI verified, where feature, how to set up

Handle failures: gather details, prioritize, update clearly

## AI Verify vs Human Accept

| Aspect | AI (Required) | Human (Optional) |
|--------|--------------|------------------|
| Context | Isolated | Guided |
| Scope | All testable | PO chooses |
| When | After Refactor | After Code Review |
| Purpose | Objective validation | Stakeholder confidence |
