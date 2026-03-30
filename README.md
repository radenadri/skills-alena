<p align="center">
  <h1 align="center">🧠 ALENA (Autonomous Layer for Executing Networked Agents)</h1>
  <p align="center">
    <strong>A personal toolkit for autonomous, networked AI agents — 34 skills · 35 commands · 38 workflows · 9 agents · 10 cursor rules · 8 hooks · 13 modules · 11 templates</strong>
  </p>
  <p align="center">
    Make your AI coding assistant operate like your own disciplined toolkit.
  </p>
  <p align="center">
    <a href="#-quick-start"><img src="https://img.shields.io/badge/Get_Started-blue?style=for-the-badge" alt="Get Started"></a>
    <a href="https://www.npmjs.com/package/@radenadri/skills-alena"><img src="https://img.shields.io/npm/v/%40radenadri%2Fskills-alena?style=for-the-badge&color=red" alt="NPM Version"></a>
    <a href="https://github.com/radenadri/skills-alena/blob/main/LICENSE"><img src="https://img.shields.io/github/license/radenadri/skills-alena?style=for-the-badge" alt="License"></a>
    <a href="https://github.com/radenadri/skills-alena/stargazers"><img src="https://img.shields.io/github/stars/radenadri/skills-alena?style=for-the-badge&color=gold" alt="Stars"></a>
  </p>
  <p align="center">
    <a href="https://github.com/radenadri"><img src="https://img.shields.io/badge/GitHub-radenadri-181717?style=flat-square&logo=github" alt="GitHub"></a>
    <a href="https://github.com/radenadri/skills-alena/wiki"><img src="https://img.shields.io/badge/Wiki-Documentation-0969da?style=flat-square&logo=github" alt="Wiki"></a>
  </p>
</p>

---

## 🌟 What is This?

**ALENA** is a personal toolkit for autonomous, networked AI agents. The long form is **Autonomous Layer for Executing Networked Agents**. Install once, use everywhere — across **34+ supported agents** including Antigravity, Cursor, Claude Code, Gemini CLI, Windsurf, Copilot, and more.

---

### 💎 The Gem: LLM Council v2 + Memory Module

> The most powerful pattern in AI-assisted development — real subagent spawning with deterministic orchestration.

**The Memory Module** deeply scans your entire codebase BEFORE any work begins — databases, schemas, API routes, service dependencies, frontend components, tech stack — and creates a structured intelligence layer that persists across sessions.

**Council v2** spawns **real subagents** via `Task()` — each specialist gets a fresh 200k context window. The orchestrator stays lean at ~10-15% context, coordinating through 13 deterministic CLI commands with code-enforced quality gates.

```
                    ╔═══════════════════════════════╗
                    ║     🎯 ORCHESTRATOR (lean)     ║
                    ║  13 CLI commands · Quality gates ║
                    ║  ~10-15% context · Task() spawn  ║
                    ╚════════════╦══════════════════╝
                                 ║
                        Task() spawning
              ┌──────────────────┼──────────────────┐
       ┌──────▼──┐ ┌──────▼──┐ ┌──▼────┐ ┌──▼──────┐
       │🔬Research│ │📐Planner│ │⚙️Exec │ │🔍Review │
       │ Fresh    │ │ Fresh   │ │ Fresh │ │ Fresh   │
       │ 200k ctx │ │ 200k   │ │ 200k  │ │ 200k   │
       └──────────┘ └────────┘ └──────┘ └─────────┘
```

**What makes it different:**
- ✅ **Real subagent spawning** — each agent gets a fresh 200k context via `Task()`, no context pollution
- ✅ **13 deterministic CLI commands** — `council start`, `council next`, `council status`, etc.
- ✅ **Code-enforced quality gates** — agents cannot advance phases without passing automated checks
- ✅ **6 presets** — Full, Rapid, Debug, Architecture, Refactoring, Audit
- ✅ **Lean orchestrator** — stays at ~10-15% context, delegates deep work to specialists
- ✅ **Zero infrastructure** — pure file-based, works in ANY agent environment

---

## 🔄 Version History

### 1.1.0 — Add `lmf` learning-first flow

- Add `lmf` skills. Add `/lmf` command for Claude Code and Antigravity. 

### 1.0.0 — Initial ALENA Release

- 🧠 **ALENA identity and public release reset** — the toolkit starts at `v1.0.0` with ALENA branding, updated install commands, refreshed docs, and release surfaces aligned under the new package and repository.
- 🤖 **Full asset library included** — ships with **34 skills**, **35 commands**, **38 workflows**, and **9 specialist agents** covering brainstorming, planning, execution, debugging, auditing, review, verification, memory, and team coordination.
- ⚙️ **Deterministic planning core** — `planning-tools.cjs` plus **12 supporting CLI modules** handle state, phase, roadmap, verification, frontmatter, config, templates, milestones, model resolution, and council coordination without relying on brittle freeform markdown edits.
- 🏛️ **Council system built in** — real subagent spawning, structured handoffs, code-enforced quality gates, task boards, and 6 presets (`full`, `rapid`, `debug`, `architecture`, `refactoring`, `audit`) are included in the first release.
- 🪝 **Hook and session tooling** — includes **8 hooks** for statusline, update checks, context monitoring, memory capture, cost tracking, and related session behavior where the target runtime supports them.
- 📝 **Templates and rules layer** — includes **11 templates** plus the core ruleset for anti-hallucination behavior, severity reporting, memory discipline, and evidence-based verification.
- 🌐 **Cross-agent portability** — installation and generated entrypoint content support **34+ AI coding agents**, with native directory/layout handling across Claude Code, Cursor, Windsurf, Gemini/Antigravity, Copilot, Codex, and more.
- 💾 **File-based memory and planning state** — `.planning/` artifacts, manifests, and markdown state keep the toolkit portable, inspectable, and repository-friendly without requiring external infrastructure.
- 🧪 **Publishable CLI package** — the release includes the npm package identity, built `dist/cli.js` entrypoint, scoped GitHub Packages support, and documentation aligned to the `1.0.0` ALENA release line.

---

## 🚀 Quick Start

### Install globally (recommended)

```bash
npx @radenadri/skills-alena add
```

This auto-detects your installed agents and installs everything — skills, commands, workflows, agents, and rules — to the right directories.

In **1.0.0**, hooks such as `security-gate`, `statusline`, and `context-monitor` are registered automatically during installation. Run `/team` to start a multi-agent council session.

### Install to a specific agent

```bash
npx @radenadri/skills-alena add --agent claude-code
npx @radenadri/skills-alena add --agent cursor
npx @radenadri/skills-alena add --agent antigravity
```

### Install specific skills only

```bash
npx @radenadri/skills-alena add persistent-memory agent-team-coordination
npx @radenadri/skills-alena add code-review systematic-debugging
```

### See everything available

```bash
npx @radenadri/skills-alena list
```

---

## 🏁 Getting Started — Greenfield vs Brownfield

After installing skills, your workflow depends on whether you're starting fresh or joining an existing codebase.

### 🟢 New Project (Greenfield)

> You're building something from scratch. No existing code, no legacy decisions.

```
┌─────────────────────────────────────────────────────────────────┐
│  GREENFIELD WORKFLOW                                            │
│                                                                 │
│  Step 1 ─ /init-project                                         │
│           Creates .planning/ structure, ROADMAP, REQUIREMENTS    │
│           Bootstraps memory system + config.json                 │
│           (Uses: node planning-tools.cjs init)                   │
│                          ▼                                      │
│  Step 2 ─ /discuss                                              │
│           Multiple-choice questions with recommendations         │
│           Quick-answer: "1A 2B 3C 4A 5A"                        │
│           Locks decisions in CONTEXT.md                          │
│                          ▼                                      │
│  Step 3 ─ /plan                                                 │
│           Creates 2-3 task plan respecting locked decisions      │
│           Each task has <files> <action> <verify> <done>         │
│                          ▼                                      │
│  Step 4 ─ /execute                                              │
│           Task-by-task execution with checkpoints                │
│           Deviation protocol for plan changes                    │
│           State tracked by planning-tools.cjs                    │
│                          ▼                                      │
│  Step 5 ─ /verify                                               │
│           Validates implementation against the plan              │
│           Gap closure if anything was missed                     │
└─────────────────────────────────────────────────────────────────┘
```

**Quick start for greenfield:**
```bash
# 1. Install skills
npx @radenadri/skills-alena add

# 2. Tell your AI agent:
/init-project

# 3. The agent will walk you through:
#    → Project context gathering
#    → Requirements capture
#    → Roadmap phases
#    → Then suggest /discuss to lock decisions
```

### 🟡 Existing Codebase (Brownfield)

> You're joining a project that already has code, patterns, and decisions. The AI needs to learn the codebase BEFORE making changes.

```
┌─────────────────────────────────────────────────────────────────┐
│  BROWNFIELD WORKFLOW                                            │
│                                                                 │
│  Step 1 ─ /memory init                                          │
│           Creates .planning/ structure for the existing project  │
│           (Uses: node planning-tools.cjs init)                   │
│                          ▼                                      │
│  Step 2 ─ Codebase Mapping (automatic)                          │
│           Agent scans: file structure, patterns, tech stack      │
│           Writes: MEMORY.md with project brain                   │
│           Captures: architecture, conventions, known issues      │
│                          ▼                                      │
│  Step 3 ─ /discuss                                              │
│           "I want to add [feature] to this existing project"     │
│           Agent asks MCQ questions considering existing patterns  │
│           Quick-answer: "1A 2B 3C 4A"                           │
│                          ▼                                      │
│  Step 4 ─ /plan                                                 │
│           Creates plan that respects existing architecture       │
│           References real files, real patterns, real conventions  │
│                          ▼                                      │
│  Step 5 ─ /execute                                              │
│           Implements following existing patterns                 │
│           codebase-conformity skill ensures consistency           │
│                          ▼                                      │
│  Step 6 ─ /verify                                               │
│           Validates against plan + existing test suite            │
└─────────────────────────────────────────────────────────────────┘
```

**Quick start for brownfield:**
```bash
# 1. Install skills into your existing project
npx @radenadri/skills-alena add

# 2. Tell your AI agent:
/memory init

# 3. Let the agent scan your codebase, then:
/discuss add user preferences feature

# 4. Answer the MCQ questions, then:
/plan
/execute
```

### Key Differences

| | 🟢 Greenfield | 🟡 Brownfield |
|:---|:---|:---|
| **First step** | `/init-project` (full setup) | `/memory init` (lightweight) |
| **Context source** | Your answers to questions | Codebase scanning → MEMORY.md |
| **Patterns** | You define them | Agent discovers existing patterns |
| **Planning** | Free to choose any approach | Must respect existing architecture |
| **Risk** | Low (no breaking changes) | Higher (must be compatible) |
| **Skills activated** | `writing-plans`, `executing-plans` | + `codebase-mapping`, `codebase-conformity` |

### The `/discuss` Quick-Answer Format

When the agent presents multiple-choice questions, you can answer everything in one line:

```
### ⚡ Quick Answer

> All recommended: 1A 2B 3A 4B 5A
>
> Your answer: 1A 2B 3C 4A 5:"use Redis for sessions"
```

| Format | Meaning |
|:---|:---|
| `1A` | Question 1, Option A |
| `2B` | Question 2, Option B |
| `5:"custom text"` | Question 5, Custom answer |
| Just press Enter | Accept all recommendations |

---

## 🏗️ Supported Agents

ALENA works with **30+ AI coding agents**. **12 platforms have full asset parity** (Claude Code, Copilot, Codex, Cursor, Windsurf, Cline, Roo, Amp, Augment, Continue, Kilo, Goose). Each agent gets assets installed to its native directory:

| | Agent | Skills | Commands | Workflows | Rules |
|:---:|:---|:---:|:---:|:---:|:---:|
| <img src="logos/anthropic-com.png" width="48"> | **Claude Code** | `.claude/skills/` | `.claude/commands/` | — | — |
| <img src="logos/cursor-com.png" width="48"> | **Cursor** | `.cursor/skills/` | — | — | `.cursor/rules/` |
| <img src="logos/gemini-google-com.png" width="48"> | **Antigravity (Gemini)** | `.agent/skills/` | — | `.agent/workflows/` | — |
| <img src="logos/gemini-google-com.png" width="48"> | **Gemini CLI** | `.gemini/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **GitHub Copilot** | `.github/skills/` | — | — | — |
| <img src="logos/windsurf-com.png" width="48"> | **Windsurf** | `.windsurf/skills/` | — | — | — |
| <img src="logos/cline-bot.png" width="48"> | **Cline** | `.cline/skills/` | — | — | — |
| <img src="logos/roocode-com.png" width="48"> | **Roo** | `.roo/skills/` | — | — | — |
| <img src="logos/openai-com.png" width="48"> | **Codex** | `.agents/skills/` | — | — | — |
| <img src="logos/sourcegraph-com.png" width="48"> | **Amp** | `.agents/skills/` | — | — | — |
| <img src="logos/kilocode-ai.png" width="48"> | **Kilo Code** | `.kilocode/skills/` | — | — | — |
| <img src="logos/augmentcode-com.png" width="48"> | **Augment** | `.augment/skills/` | — | — | — |
| <img src="logos/continue-dev.png" width="48"> | **Continue** | `.continue/skills/` | — | — | — |
| <img src="logos/block-github-io.png" width="48"> | **Goose** | `.goose/skills/` | — | — | — |
| <img src="logos/opencode-ai.png" width="48"> | **OpenCode** | `.agents/skills/` | — | — | — |
| <img src="logos/trae-ai.png" width="48"> | **Trae** | `.trae/skills/` | — | — | — |
| <img src="logos/jetbrains-com.png" width="48"> | **Junie** | `.junie/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **OpenClaw** | `skills/` | — | — | — |
| <img src="logos/all-hands-dev.png" width="48"> | **OpenHands** | `.openhands/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **Kode** | `.kode/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **Qoder** | `.qoder/skills/` | — | — | — |
| <img src="logos/zencoder-ai.png" width="48"> | **Mux** | `.mux/skills/` | — | — | — |
| <img src="logos/zencoder-ai.png" width="48"> | **Zencoder** | `.zencoder/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **Crush** | `.crush/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **Droid** | `.factory/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **Command Code** | `.commandcode/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **CodeBuddy** | `.codebuddy/skills/` | — | — | — |
| <img src="logos/mistral-ai.png" width="48"> | **Mistral Vibe** | `.vibe/skills/` | — | — | — |
| <img src="logos/qwen-ai.png" width="48"> | **Qwen Code** | `.qwen/skills/` | — | — | — |
| <img src="logos/pi-ai.png" width="48"> | **Pi** | `.pi/skills/` | — | — | — |
| <img src="logos/replit-com.png" width="48"> | **Replit** | `.agents/skills/` | — | — | — |
| <img src="logos/kiro-dev.png" width="48"> | **Kiro CLI** | `.kiro/skills/` | — | — | — |
| <img src="logos/github-com.png" width="48"> | **iFlow CLI** | `.iflow/skills/` | — | — | — |
| <img src="logos/kimi-ai.png" width="48"> | **Kimi CLI** | `.agents/skills/` | — | — | — |

---

## 📚 Complete Asset Catalog

### 🧠 Skills (34)

Skills are deep instructional documents that teach AI agents HOW to think about specific engineering tasks. Each skill contains principles, protocols, anti-patterns, and quality criteria.

#### 🔷 Core Development (9 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 1 | 💡 **brainstorming** | Creative ideation — mind maps, structured exploration, and divergent thinking before any feature work |
| 2 | 🧭 **lmf** | Learning-first mode flow — wrapper skill that combines `brainstorming`, `writing-plans`, and `writing-documentation` into a tutorial-first orchestration pattern — ✨ NEW |
| 3 | 📝 **writing-plans** | Task decomposition — dependency-aware plans with effort estimates, risk assessments, and implementation waves |
| 4 | ⚙️ **executing-plans** | Plan execution — wave-based implementation with checkpoints, inline verification, and state tracking |
| 5 | 🧪 **test-driven-development** | TDD methodology — red-green-refactor cycle, test architecture, fixture patterns, and coverage strategies |
| 6 | 🐛 **systematic-debugging** | Scientific debugging — hypothesis-driven investigation with evidence chains and root cause analysis |
| 7 | 🔍 **code-review** | Structured code review — security, performance, correctness checks with severity-based feedback |
| 8 | ✅ **verification-before-completion** | Completion gates — automated checks, compliance verification, and regression testing before marking done |
| 9 | 📦 **git-workflow** | Git best practices — conventional commits, branching strategies, PR workflows, and conflict resolution |

#### 🔶 Auditing (10 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 10 | 🏛️ **architecture-audit** | Architecture review — modularity, coupling, SOLID compliance, dependency direction, and scalability assessment |
| 11 | 🔒 **security-audit** | Security assessment — OWASP top 10, auth flows, input validation, secrets management, and vulnerability scanning |
| 12 | ⚡ **performance-audit** | Performance profiling — N+1 queries, bundle sizes, runtime bottlenecks, caching opportunities, and load testing |
| 13 | 🗄️ **database-audit** | Database health — schema design, indexing strategy, query optimization, migrations, and normalization review |
| 14 | 🎨 **frontend-audit** | Frontend quality — component architecture, state management, rendering efficiency, and responsive design |
| 15 | 🌐 **api-design-audit** | API design review — REST/GraphQL conventions, versioning, error handling, pagination, and documentation |
| 16 | 📦 **dependency-audit** | Dependency health — outdated packages, security vulnerabilities, license compliance, and bundle impact |
| 17 | 📊 **observability-audit** | Observability review — logging strategy, metrics, tracing, alerting, and production debugging capability |
| 18 | ♿ **accessibility-audit** | Accessibility compliance — WCAG standards, keyboard navigation, screen reader support, and color contrast |
| 19 | 🔄 **ci-cd-audit** | CI/CD pipeline review — build times, test reliability, deployment safety, and pipeline optimization |

#### 🔷 Evolution (4 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 20 | ♻️ **refactoring-safely** | Safe refactoring — incremental transformation with test coverage, feature flags, and rollback strategies |
| 21 | 📖 **writing-documentation** | Documentation authoring — API docs, architecture diagrams, README standards, and knowledge transfer |
| 22 | 🗺️ **codebase-mapping** | Codebase analysis — module boundaries, dependency graphs, entry points, and health metrics |
| 23 | 🚨 **incident-response** | Incident handling — triage protocols, root cause analysis, post-mortems, and prevention measures |

#### 🟣 Agent Intelligence (2 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 24 | 💾 **persistent-memory** | Automated session memory — captures decisions, context, and learnings across sessions via file-based protocols. Zero infrastructure, works in ANY agent. Inspired by [claude-mem](https://github.com/thedotmack/claude-mem). |
| 25 | 💎 **agent-team-coordination** | **LLM Council** — Manager-orchestrated multi-agent coordination with Memory Module. Manager has full project knowledge (schemas, routes, services), dynamically routes tasks to specialist sub-agents, enables peer communication, handles escalations across 6 council presets. |

#### 🔶 Integration & Completeness (4 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 26 | 🔗 **full-stack-api-integration** | End-to-end API integration — spec analysis, surface mapping, SOLID-compliant API layer design, systematic endpoint implementation, and integration testing |
| 27 | 🏥 **product-completeness-audit** | Functional completeness verification — 5-level completeness spectrum, placeholder detection, broken flow identification, and API connection validation |
| 28 | 🔬 **brutal-exhaustive-audit** | No-shortcuts 5-pass audit — build verification, route checking, data flow tracing, user flow testing, and edge case validation with anti-shortcut rules |
| 29 | 🔄 **codebase-conformity** | Pattern uniformity enforcement — read existing patterns before writing, match them exactly, and double-verify conformity before claiming done |

#### 🔀 Migration (1 skill)

| # | Skill | Description |
|:---:|:---|:---|
| 30 | 🔀 **nextjs-to-nuxt-migration** | Next.js → Nuxt 4 migration — submodule analysis, backend verification, multi-pass execution (backend wiring → feature completeness → CSS polish → verification), sidebar registration, theme/dark-mode rules, URL encoding, Agent Team File Protocol, and Playwright visual QA |

#### 🔸 Meta (5 skills)

| # | Skill | Description |
|:---:|:---|:---|
| 31 | 📘 **using-skills** | How to use and combine skills effectively in your workflow |
| 32 | ✍️ **writing-skills** | How to create new skills — format, quality standards, and testing requirements |
| 33 | 🎨 **ui-ux-redesign** | Full-stack visual audit — inventories backend APIs, audits every component and design token, analyzes user flows, and produces layered redesign recommendations |
| 34 | 📏 **_rules** | Master rules skill — consolidates core principles, anti-hallucination protocol, severity framework, and skill activation table |

---

### ⚡ Commands (35)

Commands are Claude Code slash commands (`.md` files installed to `.claude/commands/`). They provide structured workflows for common project tasks.

#### 🔷 Project Lifecycle

| Command | Description |
|:---|:---|
| `/init-project` | 🏗️ Initialize a new project with `.planning/` directory — `PROJECT.md`, `REQUIREMENTS.md`, `ROADMAP.md`, `STATE.md`, `config.json`. Uses `planning-tools.cjs` for deterministic bootstrapping. |
| `/discuss` | 💬 Pre-planning MCQ decision capture — presents multiple-choice questions with recommendations, quick-answer format (`1A 2B 3C`), locks decisions in CONTEXT.md |
| `/lmf` | 🧭 Learning-first tutorial flow — uses the local `lmf` wrapper skill to combine explanation, planning, and documentation-style guidance before execution — ✨ NEW |
| `/plan` | 📋 Create a 2-3 task implementation plan with task anatomy (`<files>` `<action>` `<verify>` `<done>`), context budgets, and locked decision enforcement |
| `/execute` | ⚙️ Execute an implementation plan with deviation protocol (4 categories), checkpoint system, and `planning-tools.cjs` state management |
| `/verify` | ✅ Validate implementations against plans — automated checks, compliance verification, regression testing, conversational UAT |
| `/progress` | 📊 Display project progress, phase status, and task completion from `.planning/` state files |
| `/settings` | ⚙️ View/modify project config — mode (interactive/auto), depth (quick/standard/comprehensive), workflow preferences |

#### 🔷 Research & Documentation

| Command | Description |
|:---|:---|
| `/research` | 🔬 Deep research on topics before planning — generates structured reports in `.planning/research/` |
| `/doc` | 📖 Generate documentation for code, APIs, architecture, or setup |
| `/explain` | 💡 Provide detailed explanations of code, architecture, or concepts |

#### 🔷 Code Quality

| Command | Description |
|:---|:---|
| `/review` | 🔍 Structured code review with severity-based feedback (critical/major/minor/nit) |
| `/test` | 🧪 Generate and run tests — unit, integration, e2e with coverage reporting |
| `/debug` | 🐛 Scientific debugging with hypothesis tracking and evidence chains |
| `/fix-issue` | 🔧 Diagnose and fix specific issues with minimal changes and regression testing |
| `/refactor` | ♻️ Safe refactoring with test coverage and incremental transformation |

#### 🔷 Operations & Security

| Command | Description |
|:---|:---|
| `/migrate` | 🗄️ Database or code migrations with safety checks, rollback strategies, and data validation |
| `/performance` | ⚡ Profile and analyze application performance with benchmarking |
| `/security-scan` | 🔒 Comprehensive security scan — OWASP top 10, secrets detection, dependency vulnerabilities |
| `/deploy-check` | 🚀 Pre-deployment validation checklist |
| `/audit` | 📋 Full codebase audit — linting, secrets, console logs, TODOs |

#### 🔷 Workflow

| Command | Description |
|:---|:---|
| `/quick` | ⚡ Execute small, well-defined tasks without full project planning |
| `/commit` | 📦 Create well-formatted Conventional Commits with proper scope and body |

#### 🟣 Agent Intelligence

| Command | Description |
|:---|:---|
| `/memory` | 💾 Persistent memory management — `init`, `read`, `write`, `compress`, `status` operations |
| `/team` | 🤝 Multi-role team coordination — `start`, `resume`, `next`, `board`, `status` operations |

#### 🔶 Integration & Auditing

| Command | Description |
|:---|:---|
| `/integrate` | 🔗 Full-stack API integration from spec — surface mapping, SOLID architecture, endpoint implementation, and verification |
| `/health-check` | 🏥 Product completeness audit — route inventory, placeholder detection, flow testing, and API connection checks |
| `/deep-audit` | 🔬 Brutal exhaustive 5-pass audit — build, routes, data flow, user flows, and edge cases with anti-shortcut rules |
| `/redesign` | 🎨 Full UI/UX redesign audit — visual audit, component census, token extraction, UX analysis, layered redesign plan |

#### 🟡 Intelligence & Orchestration

| Command | Description |
|:---|:---|
| `/learn` | 📚 Extract reusable patterns from sessions across 8 categories with deduplication, persisted to `.planning/LEARNINGS.md` |
| `/quality-gate` | ✅ 6-step quality pipeline (Build → Type Check → Lint → Test → Security → Diff) with 4 modes: quick, full, pre-commit, pre-pr |
| `/checkpoint` | 📍 Named progress snapshots with create/verify/list modes stored in `.planning/checkpoints/` |
| `/loop` | 🔁 Bounded loop execution — repetitive tasks with safety bounds (max iterations, stall detection, test-between-iterations) |
| `/orchestrate` | 🔗 Multi-agent orchestration — chain agents in predefined sequences (feature, bugfix, refactor, security) with structured handoffs |
| `/context` | 🎯 Context mode switching — dev (code-first), research (read-widely), review (quality-first) modes that change workflow behavior |

---

### 🔄 Workflows (38)

Workflows are Antigravity step-by-step execution scripts (`.md` files installed to `.agent/workflows/`). Many include `// turbo` annotations for auto-execution.

| Workflow | Description |
|:---|:---|
| `/init-project` | 🏗️ Initialize project with `.planning/` structure |
| `/discuss` | 💬 Pre-planning MCQ discussion with quick-answer |
| `/lmf` | 🧭 Learning-first tutorial workflow that mirrors the local `lmf` wrapper skill in Antigravity — ✨ NEW |
| `/plan-feature` | 📋 Plan a feature with research, design, and task decomposition |
| `/execute` | ⚙️ Execute plans with wave-based steps and verification |
| `/verify` | ✅ Validate implementation against plans |
| `/research` | 🔬 Deep research with structured report output |
| `/progress` | 📊 Display project status and completion |
| `/quick` | ⚡ Quick task execution without full planning |
| `/debug` | 🐛 Scientific debugging workflow |
| `/fix-issue` | 🔧 Issue diagnosis and fix |
| `/review` | 🔍 Structured code review |
| `/test` | 🧪 Test generation and execution |
| `/refactor` | ♻️ Safe refactoring with tests |
| `/commit` | 📦 Conventional commit creation |
| `/doc` | 📖 Documentation generation |
| `/explain` | 💡 Code explanation |
| `/audit` | 📋 Codebase audit |
| `/security-scan` | 🔒 Security scanning |
| `/performance` | ⚡ Performance profiling |
| `/migrate` | 🗄️ Database/code migration |
| `/deploy-check` | 🚀 Deployment validation |
| `/release` | 🏷️ Release preparation |
| `/codebase-map` | 🗺️ Codebase analysis and mapping |
| `/deps-update` | 📦 Dependency updates |
| `/incident-response` | 🚨 Incident triage and response |
| `/memory-sync` | 💾 Memory read/write/compress operations |
| `/team-session` | 🤝 Multi-role team coordination |
| `/integrate-api` | 🔗 Full-stack API integration workflow |
| `/product-health-check` | 🏥 Product completeness audit workflow |
| `/deep-audit` | 🔬 Brutal exhaustive audit workflow |
| `/redesign` | 🎨 Full UI/UX redesign workflow |
| `/gap-closure` | 🔧 Close execution gaps with focused mini-plans |

---

### 🤖 Agents (9)

Agent definitions are specialist AI personas (`.md` files installed to `.claude/agents/`). Each agent has detailed protocols, principles, and anti-patterns.

| Agent | Emoji | Description |
|:---|:---:|:---|
| **researcher** | 🔬 | Deep codebase and domain research — gathers comprehensive evidence and context before planning. Emphasizes accuracy, exhaustive search, and source attribution. |
| **planner** | 📋 | Plans-as-prompts — generates dependency-aware plans with task anatomy (`<files>` `<action>` `<verify>` `<done>`), context budgets, locked decision enforcement, and multi-plan sequencing. |
| **executor** | ⚙️ | Plan execution with deviation protocol — implements tasks with checkpoint handling (standard/context/blocker), DON'T/AVOID instruction enforcement, and `planning-tools.cjs` state management. |
| **reviewer** | 🔍 | Structured code review — examines changes for correctness, security, performance, patterns, and maintainability. Provides severity-based feedback. |
| **debugger** | 🐛 | Scientific debugging with hypothesis tracking — investigates issues using hypothesis-driven methodology with evidence chains and persistent state. |
| **verifier** | ✅ | Work verification and gap analysis — validates implementation against plans, runs comprehensive checks, identifies gaps, and generates fix plans. |
| **mapper** | 🗺️ | Codebase mapping and dependency analysis — analyzes project structure, module boundaries, dependencies, patterns, and health metrics. |
| **investigator** | 🕵️ | Deep investigation for Debug Council — forensic analysis of complex bugs with evidence chains and timeline reconstruction. |
| **fixer** | 🔧 | Targeted fix implementation for Debug Council — minimal, surgical fixes with regression prevention and rollback strategies. |

---

### 🎯 Cursor Rules (10)

Cursor rules are `.mdc` files installed to `.cursor/rules/`. They guide Cursor AI's behavior for specific concerns.

| Rule | Description |
|:---|:---|
| 🏗️ **core-development** | Code quality standards — SOLID principles, DRY, error handling, testing, and Git commit conventions |
| 🚫 **anti-hallucination** | Anti-fabrication protocol — mandates verification of APIs, paths, configs before use. Prevents hallucinated code. |
| 📋 **planning-workflow** | Structured planning — research → design → decompose → estimate → document workflow |
| 🐛 **debugging-protocol** | Scientific debugging — hypothesis → test → evidence → root cause methodology |
| 🔒 **security** | Security best practices — auth, input validation, data handling, secrets management |
| 🗄️ **database** | Database rules — schema design, indexing, query optimization, migrations |
| 🧪 **testing** | Testing standards — coverage requirements, fixture patterns, assertion quality |
| 🔍 **code-review** | Code review checklist — automated and manual review criteria |
| 💾 **memory-protocol** | Persistent memory — auto-read MEMORY.md on start, auto-write on end |
| 🤝 **team-protocol** | Team coordination — sequential role-switching with blackboard |

---

### 📏 Rules (5)

Universal rules (`.md` files) that can be appended to `GEMINI.md`, `CLAUDE.md`, or any agent's system prompt.

| Rule | Description |
|:---|:---|
| 🏗️ **core-principles** | Foundational engineering principles — SOLID, DRY, KISS, YAGNI, and clean architecture |
| 🚫 **anti-hallucination** | Verification-first protocol — never fabricate APIs, paths, or configs |
| ⚖️ **severity-framework** | Issue severity classification — critical/major/minor/nit with response criteria |
| 💾 **memory-protocol** | Persistent memory instructions — auto-read and auto-write `.planning/MEMORY.md` |
| 🤝 **team-protocol** | Team coordination instructions — role-switching and blackboard protocol |

---

## 💾 Persistent Memory + State Management

### The Problem
Every AI session starts from scratch. You explain the same architecture, repeat the same decisions, and lose context.

### The Solution
File-based memory protocol + deterministic state management — no hooks, no databases, no external services. Works in **ANY** agent.

```
.planning/
├── MEMORY.md                    # 🧠 Project brain (~300 lines max)
├── STATE.md                     # 📍 Current position (phase/plan/task)
├── config.json                  # ⚙️ Mode, depth, preferences
├── sessions/                    # 📝 Session logs
├── decisions/DECISIONS.md       # 📋 Decision log (append-only)
├── plans/                       # 📋 Implementation plans
├── research/                    # 🔬 Research + CONTEXT.md from /discuss
├── context/
│   ├── architecture.md          # 🏗️ Architecture decisions
│   ├── patterns.md              # 🔄 Established patterns
│   ├── gotchas.md               # ⚠️ Known issues
│   └── tech-debt.md             # 🔧 Technical debt
└── handoffs/LATEST.md           # 📤 Last session's handoff
```

### `planning-tools.cjs` — Deterministic State Management

LLMs are unreliable at structured file operations. The `planning-tools.cjs` CLI handles these deterministically:

```bash
# Bootstrap the .planning/ directory
node planning-tools.cjs init

# Track execution progress
node planning-tools.cjs state load              # Where am I?
node planning-tools.cjs state advance-task      # Mark task complete
node planning-tools.cjs state add-decision      # Record a decision
node planning-tools.cjs state add-blocker       # Flag a blocker

# Manage configuration
node planning-tools.cjs config get mode         # interactive or auto?
node planning-tools.cjs config set depth comprehensive

# Validate and report
node planning-tools.cjs verify structure        # Is .planning/ intact?
node planning-tools.cjs progress                # Show dashboard
```

### How Memory Works

```
SESSION START                    DURING SESSION                  SESSION END
┌────────────────────┐           ┌────────────────────────┐      ┌────────────────────┐
│ 1. Read MEMORY.md  │           │ 4. planning-tools.cjs  │      │ 8. Create session  │
│ 2. Read LATEST.md  │           │    tracks state changes│      │    log              │
│ 3. Read config.json│           │ 5. Decisions → log     │      │ 9. Write handoff   │
│    Full context!   │           │ 6. Blockers → flag     │      │ 10. Update memory  │
└────────────────────┘           └────────────────────────┘      └────────────────────┘
```

### Setup

#### For Antigravity
Add to `~/.gemini/GEMINI.md`:
```markdown
## 🧠 Automatic Memory Protocol
ALWAYS at the START: read .planning/MEMORY.md and .planning/handoffs/LATEST.md
ALWAYS at the END: update MEMORY.md, write handoffs/LATEST.md
```

#### For Cursor
Install the `memory-protocol.mdc` rule (auto-installed with `npx @radenadri/skills-alena add`).

#### For Claude Code
Use `/memory init` to initialize, `/memory write` to save.

### Comparison with claude-mem

| | claude-mem | ALENA |
|:---|:---:|:---:|
| Infrastructure | SQLite + Chroma + Bun | Zero ✅ |
| Agent support | Claude Code only | ANY agent ✅ |
| State management | None | `planning-tools.cjs` CLI ✅ |
| Capture method | Lifecycle hooks | Instruction-based |
| Storage | Database | Markdown files (git!) |
| Setup | Plugin install + config | Add 4 lines to GEMINI.md |

---

## 💎 LLM Council v2 — Agent Team Coordination

### The Problem
AI coding tasks fail at scale because no single agent can hold all context: database schemas, API routes, service dependencies, frontend components, and business logic — simultaneously. Linear handoffs lose context. Role-switching in a single context window wastes tokens.

### The Solution: Real Subagent Spawning + Deterministic Orchestration

**Council v2** replaces the old role-switching pattern with **real subagent spawning** via `Task()`. Each specialist agent gets a fresh 200k context window — no shared context pollution. The orchestrator stays lean at ~10-15% context usage.

```
                    ╔═══════════════════════════════╗
                    ║     🎯 ORCHESTRATOR (lean)      ║
                    ║  ~10-15% context usage           ║
                    ║  13 deterministic CLI commands    ║
                    ║  Code-enforced quality gates      ║
                    ╚════════════╦══════════════════╝
                                 ║
                        Task() spawning
              ┌──────────────────┼──────────────────┐
       ┌──────▼──┐ ┌──────▼──┐ ┌──▼────┐ ┌──▼──────┐
       │🔬Research│ │📐Planner│ │⚙️Exec │ │🔍Review │
       │ Fresh    │ │ Fresh   │ │ Fresh │ │ Fresh   │
       │ 200k ctx │ │ 200k   │ │ 200k  │ │ 200k   │
       └──────────┘ └────────┘ └──────┘ └─────────┘
```

### Key Capabilities

| Capability | Description |
|:---|:---|
| 🧠 **Real subagent spawning** | Each agent gets a fresh 200k context via `Task()` — no shared context pollution |
| 🎛️ **13 CLI commands** | Deterministic state machine for council orchestration (`council start`, `council next`, `council status`, etc.) |
| 🚪 **Code-enforced quality gates** | Agents cannot advance phases without passing automated gate checks |
| 🎯 **6 presets** | Full, Rapid, Debug, Architecture, Refactoring, Audit councils |
| 📐 **Lean orchestrator** | Orchestrator uses ~10-15% context — delegates deep work to specialists |
| 🧠 **Memory Module** | Deep intelligence layer: schemas, routes, services, components, tech stack |

---

## 📁 Project Structure

```
alena/
├── 📂 skills/                   # 32 deep instructional skills
│   ├── brainstorming/SKILL.md
│   ├── writing-plans/SKILL.md          # Plans-as-prompts with task anatomy
│   ├── executing-plans/SKILL.md        # Deviation protocol + checkpoints
│   ├── persistent-memory/SKILL.md
│   ├── agent-team-coordination/SKILL.md
│   └── ... (26 more)
├── 📂 commands/                 # 34 Claude Code slash commands
│   ├── init-project.md
│   ├── discuss.md                       ✨ MCQ decision capture
│   ├── settings.md                      ✨ Config management
│   ├── memory.md
│   ├── team.md
│   └── ... (23 more)
├── 📂 workflows/                # 37 Antigravity workflows
│   ├── init-project.md
│   ├── discuss.md                       ✨ MCQ discussion workflow
│   ├── gap-closure.md                   ✨ Execution gap closure
│   ├── memory-sync.md
│   ├── team-session.md
│   └── ... (27 more)
├── 📂 agents/                   # 9 specialist agent definitions
│   ├── planner.md                       # Plans-as-prompts, locked decisions
│   ├── executor.md                      # Deviation protocol, context awareness
│   ├── investigator.md                  # Debug Council forensics
│   ├── fixer.md                         # Debug Council surgical fixes
│   └── ... (5 more)
├── 📂 scripts/                  # Deterministic tooling
│   └── planning-tools.cjs              # State management CLI
├── 📂 cursor-rules/             # 10 Cursor .mdc rules
│   ├── core-development.mdc
│   ├── memory-protocol.mdc
│   └── ... (8 more)
├── 📂 rules/                    # 5 universal agent rules
│   ├── core-principles.md               # + Context Engineering principle
│   ├── memory-protocol.md              # + planning-tools.cjs integration
│   └── ... (3 more)
├── 📂 docs/                     # Documentation
├── 📂 src/                      # CLI source
│   └── cli.ts
├── CLAUDE.md                    # Claude Code integration
├── GEMINI.md                    # Gemini/Antigravity integration
├── package.json
└── README.md                    # You are here!
```

---

## 🛠️ CLI Reference

### Commands

```bash
# Install everything (auto-detect agents)
npx @radenadri/skills-alena add

# Install to specific agent
npx @radenadri/skills-alena add --agent antigravity
npx @radenadri/skills-alena add --agent cursor
npx @radenadri/skills-alena add --agent claude-code

# Install globally (available in all projects)
npx @radenadri/skills-alena add --global

# Install specific skills
npx @radenadri/skills-alena add persistent-memory code-review
npx @radenadri/skills-alena add lmf brainstorming writing-plans writing-documentation

# Update all skills to latest version
npx @radenadri/skills-alena update

# Show installation status and version
npx @radenadri/skills-alena status

# List all available assets
npx @radenadri/skills-alena list

# Show supported agents
npx @radenadri/skills-alena agents

# Non-interactive install (CI/CD friendly)
npx @radenadri/skills-alena add --all -y -a '*'

# Show help
npx @radenadri/skills-alena help
```

### Flags

| Flag | Description |
|:---|:---|
| `-a, --agent <name>` | Install to a specific agent (use `'*'` for all) |
| `-g, --global` | Install globally (user home) instead of project |
| `--all` | Install all available skills |
| `-y, --yes` | Non-interactive mode (auto-accept) |
| `--help` | Show help text |

### Install Behavior

| Asset | Local Install | Global Install (`-g`) |
|:---|:---|:---|
| **Skills** | Copied to agent dir. Re-running updates existing. | Copied to global agent dir. |
| **Commands** | Copied to `.claude/commands/` | ❌ Skipped |
| **Workflows** | Copied to `.agent/workflows/` | ❌ Skipped |
| **Agent Defs** | Copied to `.claude/agents/` | ❌ Skipped |
| **Cursor Rules** | Copied to `.cursor/rules/` | ❌ Skipped |
| **CLAUDE.md** | Appends activation section (preserves your content). Updates on re-install. | ❌ Skipped |
| **GEMINI.md** | Appends activation section (preserves your content). Updates on re-install. | ❌ Skipped |
| **Memory** | Never installed (created at runtime per-project). | ❌ Never installed |

If you want the full local `lmf` experience, install locally so the `lmf` wrapper skill can be paired with the Claude Code `/lmf` command and the Antigravity `/lmf` workflow. Global install still includes the `lmf` skill itself, but not the local command/workflow surfaces.

### What Gets Installed Where

| Asset Type | Claude Code | Cursor | Antigravity |
|:---|:---|:---|:---|
| Skills | `.claude/skills/` | `.cursor/skills/` | `.agent/skills/` |
| Commands | `.claude/commands/` | — | — |
| Workflows | — | — | `.agent/workflows/` |
| Agent Defs | `.claude/agents/` | — | — |
| Rules | — | `.cursor/rules/` | — |

---

## 📖 Documentation

| Document | Description |
|:---|:---|
| [🌐 Website](https://alena.radenadri.xyz) | Product homepage and primary landing page |
| [📖 Wiki](https://github.com/radenadri/skills-alena/wiki) | Comprehensive GitHub Wiki with guides and reference |
| [`skills/lmf/SKILL.md`](skills/lmf/SKILL.md) | Local wrapper skill for the `lmf` orchestrator pattern |
| [`commands/lmf.md`](commands/lmf.md) | Claude Code `/lmf` learning-first command |
| [`workflows/lmf.md`](workflows/lmf.md) | Antigravity `/lmf` learning-first workflow |
| [Agent Teams & Memory](docs/AGENT-TEAMS-AND-MEMORY.md) | Comprehensive guide to the team coordination and persistent memory systems |
| [Competitive Analysis](docs/COMPETITIVE_ANALYSIS.md) | Analysis of GSD, Claude Code, Cursor, and Antigravity frameworks |
| [Audit Report](docs/AUDIT-REPORT.md) | Comprehensive 10/10 quality audit of all 29 skills |
| [Contributing](CONTRIBUTING.md) | How to contribute to this project |
| [Changelog](CHANGELOG.md) | Version history and release notes |

---

## 📊 By the Numbers

| Metric | Count |
|:---:|:---:|
| 🧠 Skills | **34** |
| ⚡ Commands | **35** |
| 🔄 Workflows | **38** |
| 🤖 Agents | **9** |
| 🎯 Cursor Rules | **10** |
| 📏 Rules | **5** |
| 🪝 Hooks | **8** |
| 📦 CLI Modules | **13** |
| 📐 Templates | **11** |
| 📚 References | **2** |
| 🎛️ Council Commands | **13** |
| 🤖 Supported Agents | **34** |

---

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

```bash
# Clone the repo
git clone https://github.com/radenadri/skills-alena.git

# Install dependencies
npm install

# Build
npm run build

# Test locally
node dist/cli.js list
```

---

## 🙏 Acknowledgments

This project stands on the shoulders of giants. Huge thanks to these projects that inspired and influenced the design of ALENA:

| | Project | Author | Contribution |
|:---:|:---|:---|:---|
| <img src="logos/github-com.png" width="24"> | [**Skills by Amrit**](https://github.com/boparaiamrit/skills-by-amrit) | [Amritpal Singh Boparai](https://github.com/boparaiamrit) | Direct inspiration for ALENA's skills-driven structure, planning workflows, and multi-agent toolkit direction. |
| <img src="logos/github-com.png" width="24"> | [**Superpowers**](https://github.com/obra/superpowers) | Jesse Vincent ([@obra](https://github.com/obra)) | Pioneered the agentic skills framework concept — composable skills, TDD-first workflows, and subagent-driven development. The foundation we all build on. |
| <img src="logos/github-com.png" width="24"> | [**GSD (Get Shit Done)**](https://github.com/glittercowboy/get-shit-done) | [@glittercowboy](https://github.com/glittercowboy) | Spec-driven development with context rot prevention, parallel agent spawning, and executable plans. Showed how to keep AI agents focused and productive. |
| <img src="logos/anthropic-com.png" width="24"> | [**Agent Skills Standard**](https://docs.anthropic.com/en/docs/agents/agent-skills) | Anthropic | The open standard for packaging and sharing AI agent capabilities via `SKILL.md` files. |
| <img src="logos/skills-sh.png" width="24"> | [**skills.sh**](https://skills.sh) | Community | The agent skills directory and CLI that makes skill discovery and installation universal. |

---

## 📄 License

[MIT](LICENSE) © Adriana Eka Prayudha. Original upstream copyright notice remains in [LICENSE](LICENSE).
