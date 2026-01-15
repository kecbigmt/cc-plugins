---
name: publishing-stories
description: Guides commit, push, and draft PR creation for stories. Use when ready to commit changes, pushing to remote, or creating a pull request for review.
---

# Committing and Publishing

## Timing Flexibility

Acceptance can occur at different points:

| Workflow | When to Accept |
|----------|----------------|
| Pre-commit | Dev verify → PO accept → Commit |
| Pre-push | Commit → PO accept → Push |
| Post-PR | Commit → Push → Draft PR → PO accept → Ready |

Choose based on PO availability and preview needs.

## Pre-Commit Checklist

```
Before Commit:
- [ ] Developer verification complete
- [ ] All tests pass
- [ ] Linting passes
- [ ] Story log updated with completed work
```

## Commit Message

**CRITICAL: Explain WHY, not WHAT (diff shows what)**

Format: `<type>(<scope>): <summary>` + body

Types: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`

Good example:
```
feat(sync): enable GitHub backup for notes

Users need version control and backup. This initializes
the workspace as a Git repo to enable that workflow.
```

Bad (avoid):
```
feat(sync): add git init
^^ Only describes what changed, not why it matters
```

Guidelines:
- Title: what + business value (imperative, 50 chars)
- Body: problem solved, context, user benefit
- Never restate code changes

## Push

```bash
git push -u origin <branch-name>
```

## Draft Pull Request

For post-PR acceptance workflow:

```bash
gh pr create --draft --title "<title>" --body "$(cat <<'EOF'
## Summary
- [Key change 1]
- [Key change 2]

## Story
[Link to story log if applicable]

## Test Plan
- [How to verify this works]

**Status: Awaiting acceptance testing**
EOF
)"
```

Mark as ready after acceptance:
```bash
gh pr ready
```

## Post-Acceptance

After product owner accepts:
1. Update story log status to "Accepted"
2. If using draft PR workflow, mark PR as ready
3. Request code review if required
