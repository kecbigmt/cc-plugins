---
name: preparing-review
description: Commit, push, create PR. Use after verification passes and ready to share work for team review.
---

# Preparing for Code Review

Prepare verified code for team review. After Verify phase.

## Context

Read story log and git diff to understand changes.

## Pre-Commit

```bash
npm test
git status
git diff
```

Check: tests pass, linting clean, story log updated, no debug code

## Commit Message

**CRITICAL: Explain WHY, not WHAT**

Format: `<type>(<scope>): <summary>` + body

Types: feat, fix, refactor, test, docs, chore

**Good:**
```
feat(sync): enable GitHub backup

Users need version control. Initializes repo for that.
```

**Bad:**
```
feat(sync): add git init
```

Guidelines: title = what + value (≤50 chars), body = why

## Create Commit

```bash
git add .
git commit -m "$(cat <<'EOF'
<type>(<scope>): <summary>

<body explaining why>
EOF
)"
git log -1 --stat
```

## Push

```bash
git push -u origin <branch>  # first time
git push                      # subsequent
```

## Create PR

```bash
gh pr create --title "<type>(<scope>): <summary>" --body "$(cat <<'EOF'
## Summary
[What this accomplishes and why]

## Story
[Link: docs/stories/YYYYMMDDTHHMMSS_name.story.md]

## Changes
- [Change with rationale]

## Test Plan
- [How verified]
- [Evidence tests pass]

## Checklist
- [ ] Tests pass
- [ ] Linting clean
- [ ] Criteria verified
- [ ] Story log updated
EOF
)"
```

## After PR

1. Share PR URL
2. Update story log:

```markdown
### Pull Request
PR: [#123](url)
Created: [date]
Status: Ready for review
```

## Fix Mistakes

Wrong message: `git commit --amend && git push --force-with-lease`

Wrong files: `git reset HEAD <file> && git commit --amend`
