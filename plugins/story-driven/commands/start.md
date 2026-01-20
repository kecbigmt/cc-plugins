---
description: Start Story-driven Development workflow
---

# Story-driven Development

Ensures code changes deliver user value through structured workflow.

## Workflow

**Skills** (main context) + **Subagents** (isolated context):

1. **Define** → User story, criteria (defining-stories skill)
2. **Implement** → TDD Red-Green (implementing-stories skill)
3. **Refactor** → Code cleanup (refactor subagent, fresh context)
4. **Verify** → AI acceptance testing (verify subagent, fresh context)
5. **Code Review** → Commit, push, PR (code-review skill)
6. **Acceptance Test** → *Optional* human PO (acceptance-testing skill)

## Principles

- User-focused, testable (Given-When-Then), incremental (Red-Green-Refactor)
- Skills for guidance, subagents for isolation
- Story logs document progress
- AI verification = human rigor, PO decides on manual testing

## Phase Details

**Define (skill):** User story, criteria, story log

**Implement (skill):** Red (failing test), Green (pass), skip refactor

**Refactor (subagent):** Duplication removal, naming, loose coupling, high cohesion, single responsibility

**Verify (subagent):** Acceptance tests via acceptance-tester, full suite, linting, story log

**Code Review (skill):** Commit (WHY not WHAT), push, PR

**Acceptance Test (skill, optional):** Human PO manual testing

## Usage

**No arguments:** Ask which phase:
1. Define - `defining-stories` skill
2. Implement - `implementing-stories` skill
3. Refactor - `refactor` subagent via Task
4. Verify - `verify` subagent via Task
5. Code Review - `code-review` skill
6. Acceptance Test - `acceptance-testing` skill

**With arguments:** Invoke skill/subagent based on $ARGUMENTS intent.

## Benefits

Skills share main context. Subagents (Refactor, Verify) provide fresh, isolated perspective.
