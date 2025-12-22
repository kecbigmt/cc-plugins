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

Skills are model-invoked and activate based on workflow phase.

| Skill | Phase |
|-------|-------|
| `defining-stories` | Define |
| `implementing-stories` | Implement |
| `verifying-stories` | Verify |
| `accepting-stories` | Accept |
| `publishing-stories` | Publish |

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
  defining-stories/
  implementing-stories/
  verifying-stories/
  accepting-stories/
  publishing-stories/
```

## License

MIT
