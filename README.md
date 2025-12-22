# Story-driven Development Plugin for Claude Code

A Claude Code plugin for practicing Story-driven Development.

## Installation

```bash
git clone https://github.com/kecbigmt/story-driven-cc.git
claude --plugin-dir ./story-driven-cc
```

## Usage

```
/story-driven:start                    # Start workflow (interactive)
/story-driven:start <free text>        # Start with intent
```

Examples:
```
/story-driven:start
/story-driven:start add login feature
/story-driven:start verify
```

## Skills

All skills are model-invoked and activate automatically based on your task context.

| Skill | Activates When |
|-------|----------------|
| `understanding-story-driven-development` | Starting features, asking about workflow |
| `defining-stories` | Writing stories, epics, acceptance criteria |
| `implementing-stories` | Coding with TDD, working through criteria |
| `verifying-stories` | Self-testing before handoff |
| `accepting-stories` | Product owner verification |
| `publishing-stories` | Committing, pushing, creating PRs |

## Workflow

1. **Define** → User story with acceptance criteria (in story log)
2. **Implement** → TDD inner loop (red-green-refactor)
3. **Verify** → Developer self-testing
4. **Accept** → Product owner testing (timing flexible)
5. **Publish** → Commit, push, optionally create PR

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
  start.md                # /story-driven:start command
skills/
  understanding-story-driven-development/
  defining-stories/
  implementing-stories/
  verifying-stories/
  accepting-stories/
  publishing-stories/
```

## License

MIT
