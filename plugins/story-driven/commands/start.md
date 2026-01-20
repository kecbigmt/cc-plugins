---
description: Start Story-driven Development workflow
---

# Story-driven Development

Ensures code changes deliver user value through structured workflow.

## Workflow

**Skills** (main context) + **Subagents** (isolated context):

1. **Define** (`defining-stories` skill)
   - User story, criteria, story log

2. **Implement** (`implementing-stories` skill)
   - Red (failing test), Green (pass), skip refactor

3. **Refactor** (`refactor` subagent, fresh context)
   - Duplication removal, naming, loose coupling, high cohesion, single responsibility

4. **Verify** (`verify` subagent, fresh context)
   - Acceptance tests via acceptance-tester, full suite, linting, story log

5. **Code Review** (`preparing-review` skill)
   - Commit (WHY not WHAT), push, PR

6. **Acceptance Test** (`acceptance-testing` skill, *optional*)
   - Human PO manual testing

## Principles

- User-focused, testable (Given-When-Then), incremental (Red-Green-Refactor)
- Skills for guidance, subagents for isolation
- Story logs document progress
- AI verification = human rigor, PO decides on manual testing

## Usage

**No arguments:** Ask which phase (refer to Workflow for skill/subagent names)

**With arguments:** Invoke skill/subagent based on $ARGUMENTS intent

## Benefits

Skills share main context. Subagents (Refactor, Verify) provide fresh, isolated perspective.
