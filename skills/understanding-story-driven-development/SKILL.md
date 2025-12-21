---
name: understanding-story-driven-development
description: Provides overview of Story-driven Development workflow. Use when starting a new feature, asking about development process, or needing guidance on how to approach implementation work.
---

# Story-driven Development

Ensures every code change delivers user value through a structured workflow.

## Workflow Overview

1. **Define** → User story with acceptance criteria (in story log)
2. **Implement** → TDD with small steps
3. **Verify** → Developer self-testing
4. **Accept** → Product owner testing (timing flexible)
5. **Publish** → Commit, push, and optionally create PR

## When to Use Each Skill

| Task | Skill |
|------|-------|
| Writing user stories or epics | See [defining-stories](../defining-stories/SKILL.md) |
| Coding and TDD inner loop | See [implementing-stories](../implementing-stories/SKILL.md) |
| Pre-handoff self-testing | See [verifying-stories](../verifying-stories/SKILL.md) |
| Product owner acceptance | See [accepting-stories](../accepting-stories/SKILL.md) |
| Commit, push, create PR | See [publishing-stories](../publishing-stories/SKILL.md) |

## Key Principles

- **User-focused**: Every change traces to user value
- **Testable**: Given-When-Then acceptance criteria
- **Incremental**: Small, reviewable steps
- **Documented**: Story logs capture decisions and progress
