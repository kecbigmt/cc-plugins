---
description: Start Story-driven Development workflow
---

# Story-driven Development

Ensures every code change delivers user value through a structured workflow.

## Workflow

1. **Define** → User story with acceptance criteria (in story log)
2. **Implement** → TDD with small steps
3. **Verify** → Developer self-testing
4. **Accept** → Product owner testing (timing flexible)
5. **Publish** → Commit, push, and optionally create PR

## Key Principles

- **User-focused**: Every change traces to user value
- **Testable**: Given-When-Then acceptance criteria
- **Incremental**: Small, reviewable steps
- **Documented**: Story logs capture decisions and progress
- **Agile**: Stories emerge during development, not all upfront

## If no arguments provided

Ask the user what phase they want to work on:

1. **Define** - See [defining-stories](../skills/defining-stories/SKILL.md)
2. **Implement** - See [implementing-stories](../skills/implementing-stories/SKILL.md)
3. **Verify** - See [verifying-stories](../skills/verifying-stories/SKILL.md)
4. **Accept** - See [accepting-stories](../skills/accepting-stories/SKILL.md)
5. **Publish** - See [publishing-stories](../skills/publishing-stories/SKILL.md)

## If arguments provided

Interpret the user's intent from: $ARGUMENTS

Then read the appropriate skill and guide the user through that phase.
