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

1. **Define** - Use the `defining-stories` skill
2. **Implement** - Use the `implementing-stories` skill
3. **Verify** - Use the `verifying-stories` skill
4. **Accept** - Use the `accepting-stories` skill
5. **Publish** - Use the `publishing-stories` skill

## If arguments provided

Interpret the user's intent from: $ARGUMENTS

Then invoke the appropriate skill to guide the user through that phase.
