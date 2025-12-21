---
name: defining-stories
description: Guides creation of user stories and epic design documents. Use when defining new features, writing Given-When-Then criteria, creating story logs, or designing larger features that need scope definition.
---

# Defining User Stories

## Epic vs Story

| Document | Purpose | When to Create |
|----------|---------|----------------|
| **Epic** | Design document defining scope, goals, and technical approach | When starting a larger feature |
| **Story** | Incremental deliverable with acceptance criteria | As needed during development |

**Agile approach**: Stories emerge during development. Do NOT define all stories upfront. Create each story when ready to implement it.

## User Story Format

```
As a [role], I want [capability], so that [benefit].
```

Guidelines:
- Keep scope minimal but meaningful
- Focus on user-visible behavior, not implementation
- One story = one independently deliverable increment

## Acceptance Criteria (Given-When-Then)

```markdown
- [ ] **Given** [precondition], **When** you [action], **Then** [expected result]
```

Guidelines:
- Focus on user-observable behavior
- Include happy paths AND error cases
- Leave checkboxes unchecked (product owner checks them)

## Story Log Creation

### File Naming

UTC timestamp: `<YYYYMMDDTHHMMSS>_<story-name>.story.md`

```bash
date -u +"%Y%m%dT%H%M%S"
```

### Location

- Epic-related: `docs/stories/<YYYYMMDD>_<epic-name>/<timestamp>_<story-name>.story.md`
- Standalone: `docs/stories/<timestamp>_<story-name>.story.md`

### Template

See [STORY_TEMPLATE.md](STORY_TEMPLATE.md) for story log structure.

## Epic Documents

Epics are **design documents** that define:
- Scope and non-scope
- Motivation and goals
- Technical design and terminology
- User-facing changes
- Error handling approach
- Testing strategy

### Location

- Directory: `docs/stories/<YYYYMMDD>_<epic-name>/`
- File: `<YYYYMMDDTHHMMSS>_<epic-name>.epic.md`

See [EPIC_TEMPLATE.md](EPIC_TEMPLATE.md) for epic structure.

### Epic Workflow

1. Create epic design document with scope
2. Implement stories incrementally (define each as needed)
3. Update epic status as work progresses
