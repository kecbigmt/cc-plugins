---
name: defining-user-stories
description: Guides creation of user stories and epics with acceptance criteria. Use when defining new features, writing Given-When-Then criteria, creating story logs, or breaking down large features into epics and stories.
---

# Defining User Stories

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

UTC timestamp format: `<YYYYMMDDTHHMMSS>_<story-name>.story.md`

```bash
date -u +"%Y%m%dT%H%M%S"
```

### Location

- Epic-related: `docs/stories/<YYYYMMDD>_<epic-name>/<timestamp>_<story-name>.story.md`
- Standalone: `docs/stories/<timestamp>_<story-name>.story.md`

### Template

See [STORY_TEMPLATE.md](STORY_TEMPLATE.md) for complete story log structure.

## Epic Documents

For multi-story features:

- Directory: `docs/stories/<YYYYMMDD>_<epic-name>/`
- File: `<YYYYMMDDTHHMMSS>_<epic-name>.epic.md`

See [EPIC_TEMPLATE.md](EPIC_TEMPLATE.md) for epic structure.

## Example

```markdown
### User Story
**As a CLI user, I want to initialize my workspace as a Git repository,
so that I can sync my notes to GitHub.**

### Acceptance Criteria

#### 1. Initialization
- [ ] **Given** a workspace without Git, **When** you run `sync init <url>`,
      **Then** a Git repository is initialized

#### 2. Error Cases
- [ ] **Given** an invalid URL, **When** you run `sync init <url>`,
      **Then** an error message explains the problem
```
