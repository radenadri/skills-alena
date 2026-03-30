# ALENA

> v1.0.0 — A personal toolkit for autonomous, networked AI agents.

## How It Works

You have a library of composable skills installed in `.agent/skills/`. Before any task, check if a relevant skill exists. Skills are not suggestions — they are mandatory workflows when their activation conditions are met.

**Check skills before:**
- Writing any code
- Debugging any issue
- Reviewing any PR
- Auditing any system
- Planning any feature
- Refactoring any module

## Core Principles

Read and internalize `rules/core-principles.md` before any work.

**The four non-negotiables:**
1. **Evidence before claims** — Never say "done" without verification
2. **Root cause before fixes** — Never patch symptoms
3. **Plan before code** — Never start coding without understanding what you're building
4. **Context before degradation** — Quality drops as context fills. Plan for it.

## Skill Activation

Skills activate automatically when their conditions are met. You MUST use the relevant skill — skipping is not an option.

| Situation | Required Skill |
|-----------|---------------|
| New feature request | `brainstorming` → `/discuss` → `writing-plans` → `executing-plans` |
| Bug report | `systematic-debugging` |
| "Audit this codebase" | `codebase-mapping` → `architecture-audit` |
| "Is this secure?" | `security-audit` |
| "Why is this slow?" | `performance-audit` |
| "Review this code" | `code-review` |
| Writing tests | `test-driven-development` |
| About to say "done" | `verification-before-completion` |
| Changing existing code | `refactoring-safely` |
| Database questions | `database-audit` |
| Frontend issues | `frontend-audit` |
| API design | `api-design-audit` |
| Deployment concerns | `ci-cd-audit` |
| Accessibility | `accessibility-audit` |
| Logging/monitoring | `observability-audit` |
| Dependency updates | `dependency-audit` |
| Production incident | `incident-response` |
| Writing docs | `writing-documentation` |
| Git operations | `git-workflow` |
| API integration | `full-stack-api-integration` |
| Completeness check | `product-completeness-audit` |
| Deep audit | `brutal-exhaustive-audit` |
| Cross-session memory | `persistent-memory` |
| Complex multi-step task / LLM Council | `agent-team-coordination` |
| Multi-agent team task | `agent-team-coordination` (uses real subagent spawning) |
| Adding code to existing codebase | `codebase-conformity` |
| Creating new skills | `writing-skills` |
| Discovering skills | `using-skills` |
| Pre-planning decisions | `/discuss` command |
| Configuration management | `/settings` command |
| Verification gaps found | `/gap-closure` workflow |

## Anti-Hallucination Protocol

Read `rules/anti-hallucination.md`. Summary:

1. **Never fabricate** — If you don't know, say so
2. **Never assume** — Verify file existence, function signatures, variable names
3. **Never extrapolate** — Read the actual code, don't guess from names
4. **Never claim completion without evidence** — Run the command, read the output

## Severity Framework

All findings use the standard severity framework:

| Level | Label | Meaning |
|-------|-------|---------|
| 🔴 | Critical | Production risk, security vulnerability, data loss potential |
| 🟠 | High | Must fix before next deploy |
| 🟡 | Medium | Technical debt, fix within sprint |
| 🟢 | Low | Improvement opportunity, backlog |
| ⚪ | Info | Observation, no action needed |

## Commands

Slash commands are available in `commands/`. Key commands:

| Command | Purpose |
|---------|---------|
| `/audit` | Run security, performance, architecture, or database audit |
| `/debug` | Systematic debugging with root cause analysis |
| `/deep-audit` | Brutal 5-pass exhaustive audit |
| `/discuss` | Lock user preferences BEFORE planning — prevents rework |
| `/lmf` | Run the learning-first tutorial flow before or alongside execution |
| `/plan` | Create executable prompt plans with task anatomy |
| `/execute` | Execute plans with deviation protocol and checkpoints |
| `/settings` | View/modify project config (mode, depth, preferences) |
| `/verify` | Validate implementations against plans |
| `/quick` | Execute small tasks without full planning |
| `/commit` | Create conventional commits |
| `/team [objective] --preset [type]` | Multi-agent council with real subagent spawning |
| `/team resume` | Resume an existing council session |
| `/team board` | Show current task board |
| `/team status` | Show council state |
| `/memory` | Persistent memory management |
| `/progress` | Project progress dashboard |
| `/init-project` | Bootstrap `.planning/` directory |

## Agents

Specialist agents are available in `agents/` for subagent spawning:

| Agent | Role |
|-------|------|
| `researcher` | Evidence-based code research |
| `planner` | Task decomposition and wave planning |
| `executor` | Plan implementation with verification |
| `reviewer` | Code review and quality assessment |
| `mapper` | Codebase structural mapping |
| `debugger` | Scientific hypothesis-driven debugging |
| `verifier` | Implementation verification and gap analysis |
| `investigator` | Deep-dive analysis and root cause investigation |
| `fixer` | Targeted issue resolution and patch application |

## File Structure

```
alena/
├── CLAUDE.md              ← Claude Code entry point
├── GEMINI.md              ← You are here
├── rules/                 ← Non-negotiable principles
│   ├── core-principles.md
│   ├── anti-hallucination.md
│   ├── severity-framework.md
│   ├── memory-protocol.md
│   └── team-protocol.md
├── scripts/
│   ├── planning-tools.cjs  ← 90+ CLI commands
│   └── lib/                ← 13 modules
├── hooks/                 ← 5 production hooks (security, statusline, context, update, memory)
├── templates/             ← 11 structured templates
├── references/            ← Questioning framework, deviation rules
├── commands/              ← Slash commands
│   ├── audit.md
│   ├── debug.md
│   ├── deep-audit.md
│   ├── execute.md
│   ├── verify.md
│   └── ... (20 more)
├── agents/                ← Specialist subagents (9 agents)
│   ├── researcher.md
│   ├── planner.md
│   ├── executor.md
│   ├── reviewer.md
│   ├── mapper.md
│   ├── debugger.md
│   ├── verifier.md
│   ├── investigator.md
│   └── fixer.md
├── cursor-rules/          ← Cursor IDE rules (10 rules)
└── skills/                ← Composable skill library (31 skills)
    ├── brainstorming/
    ├── lmf/
    ├── writing-plans/
    ├── executing-plans/
    ├── test-driven-development/
    ├── systematic-debugging/
    ├── code-review/
    ├── verification-before-completion/
    ├── git-workflow/
    ├── architecture-audit/
    ├── security-audit/
    ├── performance-audit/
    ├── database-audit/
    ├── frontend-audit/
    ├── api-design-audit/
    ├── dependency-audit/
    ├── observability-audit/
    ├── accessibility-audit/
    ├── ci-cd-audit/
    ├── refactoring-safely/
    ├── writing-documentation/
    ├── codebase-mapping/
    ├── incident-response/
    ├── full-stack-api-integration/
    ├── product-completeness-audit/
    ├── brutal-exhaustive-audit/
    ├── persistent-memory/
    ├── agent-team-coordination/
    ├── codebase-conformity/
    ├── writing-skills/
    └── using-skills/
```

## Workflows

Workflows are installed in `.agent/workflows/`. Use `/workflow-name` to execute them. Workflows with `// turbo` annotations auto-run safe steps.

Use `/lmf` when you want tutorial-first explanation and planning guidance before switching to direct execution.

## Persistent Memory

If `.planning/MEMORY.md` exists, read it at session start and update it at session end. This provides cross-session context. Use `node planning-tools.cjs` for deterministic state updates.

## State Management

`scripts/planning-tools.cjs` handles structured operations that LLMs can't do reliably:
```bash
node planning-tools.cjs init                # Bootstrap .planning/ structure
node planning-tools.cjs state load          # Load current position
node planning-tools.cjs state advance-task  # Advance task counter
node planning-tools.cjs state add-decision  # Record a decision
node planning-tools.cjs config get <key>    # Read config
node planning-tools.cjs config set <key> <value>  # Write config
node planning-tools.cjs progress            # Show dashboard
```

## Council Commands (Multi-Agent Teams)

The `/team` command runs a multi-agent council with real subagent spawning via `Task()`. Each agent gets fresh 200k context. State is managed deterministically by the CLI — no LLM-driven file creation.

All commands: `node planning-tools.cjs council <subcommand>`

| Command | Purpose |
|---------|---------|
| `council init <objective> --preset <type>` | Initialize council state machine |
| `council advance` | Move to next agent (with gate validation) |
| `council advance --force` | Move to next agent (skip gate check) |
| `council message <from> <to> <type>` | Create numbered handoff message |
| `council handoff <agent>` | Record agent completion with handoff doc |
| `council gate-check` | Validate transition quality gate |
| `council board` | Regenerate task board (BOARD.md) |
| `council status` | Show current council state as JSON |
| `council task-add <desc>` | Add task (`--assignee`, `--depends-on`) |
| `council task-update <id> --status <s>` | Update task (`pending\|in-progress\|done\|blocked`) |
| `council summary` | Generate council summary report |
| `council close` | Close council with final report |
| `council resume` | Resume a previously archived council |
| `council reset` | Archive current council and start fresh |

**Presets:** `full` (5 agents), `rapid` (3), `debug` (3), `architecture` (3), `refactoring` (4), `audit` (3)

**Quality gates** are code-enforced. Each transition requires specific handoff content (e.g., `researcher->architect` requires a `findings` section). Gates block advancement until criteria are met.

**State** lives in `.planning/council/council.json`. Handoffs in `handoffs/`, messages in `messages/`, tasks in `tasks/`.

See `docs/AGENT-TEAMS-AND-MEMORY.md` for the full architecture guide.

---

## � Release Process (Publishing to npm)

**Versioning is NOT automatic.** You must manually run a command to publish.

### When to Release

Release when you've made meaningful changes worth publishing:
- **Patch** (4.0.0 → 4.0.1): Bug fixes, typo corrections
- **Minor** (4.0.0 → 4.1.0): New features, new skills, new commands
- **Major** (4.0.0 → 5.0.0): Breaking changes

### Release Commands

```powershell
# Bug fix release (1.0.0 → 1.0.1)
npm run release:patch

# New feature release (1.0.0 → 1.1.0)
npm run release:minor

# Breaking change release (1.0.0 → 2.0.0)
npm run release:major
```

### What These Commands Do

Each release command automatically:
1. Bumps version in `package.json`
2. Creates a git tag (e.g., `v1.0.1`)
3. Runs `npm run build`
4. Publishes to npm registry
5. Pushes the tag to GitHub

### Before Releasing

1. Ensure all changes are committed and pushed
2. Ensure CI pipeline passes
3. Update CHANGELOG.md with release notes
4. Verify git status is clean: `git status --short`

### After Releasing

Verify on npm: `npm view skills-alena version`

---

## �🚨 Pre-Commit Checklist (CRITICAL)

**Before ending any session that modifies the repository:**

### 1. Check for Uncommitted Changes
```powershell
git status --short
```
If files are modified/untracked, they MUST be committed.

### 2. 🚨 CRITICAL: Version Management (READ THIS)

**THE PROBLEM:**
Version is scattered across multiple files. If you bump version without syncing, npm, docs, and website will be out of sync.

**THE SOLUTION:**
`package.json` is the SINGLE source of truth. All other files are auto-synced.

**NEVER MANUALLY EDIT VERSION IN:**
- ❌ `package.json` (only via `npm version`)
- ❌ `docs/index.html` (auto-synced)
- ⚠️ `CHANGELOG.md` (you MUST add entry manually BEFORE bumping version)

**CORRECT WORKFLOW:**

```powershell
# 1. Update CHANGELOG.md FIRST
# Add new version section manually: ## [X.Y.Z] — YYYY-MM-DD

# 2. Commit your changes (NOT the version bump yet)
git add -A
git commit -m "feat: your changes"
git push

# 3. Bump version — this auto-syncs everything
npm run release:minor  # or release:patch, release:major

# What happens automatically:
# - package.json version bumped
# - docs/index.html updated with new version
# - Git tag created (vX.Y.Z)
# - Published to npm
# - Pushed to GitHub with tag
```

**IF YOU MESS UP:**
```powershell
# If you already bumped locally but didn't push:
git tag -d vX.Y.Z  # Delete the tag
git reset --hard HEAD~1  # Undo the version commit

# Then follow the correct workflow above
```

### 3. Verify Asset Counts Match
When adding/removing skills, commands, workflows, agents, hooks, modules, templates, or rules:
```powershell
$skills = (Get-ChildItem -Path skills -Recurse -Filter "SKILL.md").Count
$commands = (Get-ChildItem -Path commands -Filter "*.md").Count
$workflows = (Get-ChildItem -Path workflows -Filter "*.md").Count
$agents = (Get-ChildItem -Path agents -Filter "*.md").Count
$rules = (Get-ChildItem -Path cursor-rules -Filter "*.md").Count
$hooks = (Get-ChildItem -Path hooks -Filter "*.md","*.js","*.cjs" -ErrorAction SilentlyContinue).Count
$modules = (Get-ChildItem -Path scripts/lib -Filter "*.cjs" -ErrorAction SilentlyContinue).Count
$templates = (Get-ChildItem -Path templates -Filter "*.md" -ErrorAction SilentlyContinue).Count
$references = (Get-ChildItem -Path references -Filter "*.md" -ErrorAction SilentlyContinue).Count

Write-Host "Skills: $skills | Commands: $commands | Workflows: $workflows | Agents: $agents | Rules: $rules | Hooks: $hooks | Modules: $modules | Templates: $templates | References: $references"
```

**v1.0.0 expected counts:** 31 skills, 28 commands, 32 workflows, 9 agents + 5 hooks, 13 modules, 11 templates, 2 references

Update these files if counts changed:
- `package.json` (description field)
- `README.md` (metrics table)
- `docs/index.html` (meta description)
- `CHANGELOG.md` (for new skills)

### 📝 README Version Highlights Rule

**The `README.md` has a "🏆 Recent Releases" section that shows the last 3 minor versions.**

**On every MINOR release (e.g. 3.4.0):**
1. Add the new version at the top of "Recent Releases"
2. Remove the oldest version (keep only 3)
3. Each version entry should have 3-4 bullet points summarizing key changes

**On PATCH releases (e.g. 3.3.1):** No README update needed — patches are too small.

**Format:**
```markdown
### 🏆 Recent Releases

#### vX.Y.0 — Title 🎨
- 🆕 Key new feature
- 🧠 Key enhancement
- 📊 Asset counts

#### vX.Y-1.0 — Title 📚
- ...

#### vX.Y-2.0 — Title 🔧
- ...
```

### 3. Commit ALL Modified Files
```powershell
git add -A
git status  # Verify everything is staged
```

### 4. Use Temp File for Commit Message
```powershell
# Create commit message file
Set-Content -Path ".commit-msg.txt" -Value "your message"
git commit -F .commit-msg.txt
Remove-Item .commit-msg.txt
```

### 5. Push Immediately
```powershell
git push
```

**⚠️ NEVER end a session with uncommitted changes!**
