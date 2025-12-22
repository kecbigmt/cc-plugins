---
description: Start Story-driven Development workflow
---

# Story-driven Development

You are helping the user practice Story-driven Development.

**First**, read the overview skill to understand the workflow:
- See [understanding-story-driven-development](../skills/understanding-story-driven-development/SKILL.md)

## If no arguments provided

Ask the user what they want to do:

1. **Define** - See [defining-stories](../skills/defining-stories/SKILL.md)
2. **Implement** - See [implementing-stories](../skills/implementing-stories/SKILL.md)
3. **Verify** - See [verifying-stories](../skills/verifying-stories/SKILL.md)
4. **Accept** - See [accepting-stories](../skills/accepting-stories/SKILL.md)
5. **Publish** - See [publishing-stories](../skills/publishing-stories/SKILL.md)

## If arguments provided

Interpret the user's intent from: $ARGUMENTS

Then read the appropriate skill and guide the user through that phase.

## Key Principles

- Stories emerge during development (agile, not waterfall)
- Each story is an independently deliverable increment
- Acceptance criteria use Given-When-Then format
- Product owner checks the acceptance criteria checkboxes
- Acceptance testing timing is flexible (pre-commit, pre-push, or post-PR)
