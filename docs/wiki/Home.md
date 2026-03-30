# 🧠 ALENA Wiki

Welcome to the **ALENA v1.1.0** wiki. This documentation is written for the ALENA toolkit first: a personal toolkit for autonomous, networked AI agents with reusable skills, commands, workflows, agents, rules, hooks, and planning assets.

ALENA is independently maintained by Adriana Eka Prayudha. It is also explicitly inspired by [Skills by Amrit](https://github.com/boparaiamrit/skills-by-amrit), especially in its skills-driven workflow design.

---

## What Ships in v1.1.0

- **35 skills** for planning, PRD writing, debugging, reviewing, auditing, documentation, memory, coordination, and `lmf` learning-first guidance
- **36 Claude Code commands** for project lifecycle work
- **39 Antigravity workflows** for guided execution
- **9 specialist agents** for structured team-style delegation
- **8 hooks**, **10 Cursor rules**, **11 templates**, and **2 reference docs**

### `lmf` in the Wiki

ALENA now documents the local `lmf` pattern in three layers:

- `skills/lmf/` as the wrapper skill
- `commands/lmf.md` for Claude Code
- `workflows/lmf.md` for Antigravity

The wrapper skill composes `brainstorming`, `writing-plans`, and `writing-documentation` so the user gets a tutorial-first answer before execution.

### PRD Flow in the Wiki

ALENA also documents local PRD creation in three layers:

- `skills/write-prd/` as the wrapper skill
- `commands/prd.md` for Claude Code
- `workflows/prd.md` for Antigravity

`write-prd` is interview-first and product-first. It clarifies the user, problem, goals, non-goals, and success criteria before handing the result off to implementation planning.

---

## Start Here

### Getting Started
- **[Getting Started Guide](Getting-Started.md)** — choose the right path for greenfield, brownfield, or quick tasks
- [Quick Start](Quick-Start.md) — first-run setup in a minute
- [Installation Guide](Installation-Guide.md) — install ALENA into Claude Code, Cursor, or Antigravity
- [Greenfield Walkthrough](examples-Getting-Started-Greenfield.md) — end-to-end new project example
- [Brownfield Walkthrough](examples-Getting-Started-Brownfield.md) — end-to-end existing codebase example

### Core Concepts
- [Asset Types](Asset-Types.md) — what each installable ALENA asset does
- [Examples Index](Examples.md) — example conversations and usage patterns across the wiki

### Reference Guides
- [Core Development Skills](Skills-Core-Development.md)
- [Auditing Skills](Skills-Auditing.md)
- [Evolution Skills](Skills-Evolution.md)
- [Agent Intelligence Skills](Skills-Agent-Intelligence.md)
- [Meta Skills](Skills-Meta.md)
- [Commands Reference](Commands-Reference.md)
- [Workflows Reference](Workflows-Reference.md)
- [Agents Reference](Agents-Reference.md)
- [Hooks Reference](Hooks-Reference.md)
- [Templates Reference](Templates-Reference.md)
- [Council System](Council-System.md)

### Practical ALENA Workflows
- [examples-commands-discuss](examples-commands-discuss.md) — lock decisions before planning
- [examples-commands-lmf](examples-commands-lmf.md) — run the learning-first `/lmf` flow in Claude Code
- [examples-workflows-lmf](examples-workflows-lmf.md) — run the learning-first `/lmf` flow in Antigravity
- [examples-skills-lmf](examples-skills-lmf.md) — understand when and how the wrapper skill teaches before execution
- [examples-commands-prd](examples-commands-prd.md) — draft a product requirements document in Claude Code
- [examples-workflows-prd](examples-workflows-prd.md) — draft a product requirements document in Antigravity
- [examples-skills-write-prd](examples-skills-write-prd.md) — understand when and how PRD drafting should interview before writing
- [examples-skills-persistent-memory](examples-skills-persistent-memory.md) — keep context across sessions
- [examples-skills-agent-team-coordination](examples-skills-agent-team-coordination.md) — split complex work across specialist agents
- [examples-workflows-debug](examples-workflows-debug.md) — debug with evidence instead of guesswork

---

## Notes

- Package: [`@radenadri/skills-alena`](https://www.npmjs.com/package/@radenadri/skills-alena)
- Repository: [radenadri/skills-alena](https://github.com/radenadri/skills-alena)
- Website: [alena.radenadri.xyz](https://alena.radenadri.xyz)
