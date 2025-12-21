# Story-driven Development Plugin for Claude Code

A Claude Code plugin for practicing Story-driven Development.

## Installation

```bash
claude --plugin-dir /path/to/story-driven-cc
```

## Usage

```
/story                    # Start workflow (interactive)
/story <free text>        # Start with intent
```

Examples:
```
/story
/story add login feature
/story verify
/story run acceptance testing
```

## Skills

All skills are model-invoked and activate automatically based on your task context.

| Skill | Activates When |
|-------|----------------|
| `understanding-story-driven-development` | Starting features, asking about workflow |
| `defining-user-stories` | Writing stories, epics, acceptance criteria |
| `implementing-stories` | Coding with TDD, working through criteria |
| `verifying-implementation` | Self-testing before handoff |
| `committing-and-publishing` | Committing, pushing, creating PRs |
| `acceptance-testing` | Product owner verification |

## Workflow

1. **Define** → User story with Given-When-Then criteria
2. **Plan** → Create timestamped story log
3. **Implement** → TDD inner loop (red-green-refactor)
4. **Verify** → Developer self-testing
5. **Accept** → Product owner testing (timing flexible)
6. **Publish** → Commit, push, optionally create PR

## Acceptance Testing Flexibility

The timing of acceptance testing adapts to your workflow:

| Workflow | Flow |
|----------|------|
| Pre-commit | Verify → Accept → Commit → Push |
| Pre-push | Verify → Commit → Accept → Push |
| Post-PR | Verify → Commit → Push → Draft PR → Accept → Ready |

## Example Usage

Ask Claude naturally:

- "Help me create a user story for adding dark mode"
- "I need to implement the login feature from this story"
- "Run developer verification on my changes"
- "Let's do acceptance testing for the sync-init story"
- "Commit these changes and create a draft PR"

Claude will automatically use the relevant skill.

## Plugin Structure

```
commands/
  story.md                # /story command entry point
skills/
  understanding-story-driven-development/
  defining-user-stories/
  implementing-stories/
  verifying-implementation/
  committing-and-publishing/
  acceptance-testing/
```

## License

MIT
