---
name: pr-template
description: Pull request template for story-driven development. Use when creating PRs or need PR structure reference.
---

# Pull Request Template

**IMPORTANT: Use project's PR template if it exists** (e.g., `.github/pull_request_template.md`). This template is a fallback for projects without one.

## Basic Template

```bash
gh pr create --title "<type>(<scope>): <summary>" --body "$(cat <<'EOF'
## Summary
[What this accomplishes and why]

## Story
[Link: docs/stories/YYYYMMDDTHHMMSS_name.story.md]

## Changes
- [Component/area affected and what changed]
- [Help reviewers understand scope]

## Breaking Changes
[If none, write "None". If any, list what breaks and migration path]

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

## Guidelines

**Title:** Use same format as commit message
- `<type>(<scope>): <summary>`
- ≤50 chars, imperative mood

**Summary:**
- What changed and why (user/business value)
- NOT a list of commits or file changes

**Story:**
- Link to story log if applicable
- Helps reviewers understand context

**Changes:**
- List affected components/areas (e.g., API, UI, DB)
- Helps reviewers understand scope and impact

**Breaking Changes:**
- Write "None" if no breaking changes
- If breaking: what breaks, why necessary, migration path

**Test Plan:**
- How acceptance criteria were verified
- Evidence (test output, screenshots, etc.)

**Checklist:**
- All items should be checked before requesting review
- Add project-specific items as needed
