---
name: preparing-review
description: Commit, push, create PR. Use after verification passes and ready to share work for team review.
---

# Preparing for Code Review

## Pre-Commit Checklist

```
Before Commit:
- [ ] Developer verification complete
- [ ] All tests pass
- [ ] Linting passes
- [ ] Story log updated
```

## Commit Granularity

**CRITICAL: One intent per commit.** Split by "why" not "what".

❌ FORBIDDEN:
```bash
git add .  # Groups unrelated changes
git commit -m "add feature X and refactor Y"
```

✅ REQUIRED:
```bash
git add src/feature.ts tests/feature.test.ts
git commit -m "feat: enable feature X"

git add src/utils.ts
git commit -m "refactor: extract common logic"
```

## Commit Message

**CRITICAL: Explain WHY, not WHAT (diff shows what)**

Format: `<type>(<scope>): <summary>` + body

Types: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`

Good:
```
feat(sync): enable GitHub backup for notes

Users need version control. Initializes repo for that.
```

Bad (avoid):
```
feat(sync): add git init
^^ Only what, not why it matters
```

Guidelines:
- Title: what + value (imperative, ≤50 chars)
- Body: problem solved, context, user benefit
- Never restate code changes

## Push

```bash
git push -u origin <branch>  # first time
git push                      # subsequent
```

## Create PR

Use `pr-template` skill for PR structure and guidelines.

