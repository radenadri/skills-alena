# 🔄 Workflows Reference

> 39 Antigravity workflows that mirror ALENA's planning, execution, verification, and maintenance flows

Workflows are `.md` files installed to `.agent/workflows/`. They provide step-by-step execution guides that Antigravity follows. Steps marked `// turbo` are auto-executed without user confirmation.

---

## 📋 Complete Workflow Catalog

### 🏗️ Project Lifecycle

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 1 | `/init-project` | ✅ | Initialize a new project and bootstrap `.planning/` |
| 2 | `/discuss` | — | Lock implementation decisions before planning |
| 3 | `/plan-feature` | — | Build a feature plan with scope, dependencies, and verification |
| 4 | `/execute` | ✅ | Execute the current plan with checkpoints and state tracking |
| 5 | `/verify` | ✅ | Validate work against plan goals and acceptance criteria |
| 6 | `/progress` | ✅ | Show current phase, task, and milestone progress |
| 7 | `/checkpoint` | ✅ | Create or validate named checkpoints |
| 8 | `/context` | ✅ | Switch between development, research, and review modes |
| 9 | `/quick` | ✅ | Handle small tasks without full planning overhead |

### 🔬 Research & Documentation

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 10 | `/lmf` | — | Run the learning-first tutorial flow using the local `lmf` wrapper skill |
| 11 | `/prd` | — | Run the interview-first PRD workflow using the local `write-prd` wrapper skill |
| 12 | `/research` | — | Run structured research with recommendations and citations |
| 13 | `/doc` | — | Generate or update documentation artifacts |
| 14 | `/explain` | — | Explain code, architecture, or concepts in detail |
| 15 | `/codebase-map` | ✅ | Map the codebase and its main boundaries |
| 16 | `/learn` | ✅ | Capture reusable patterns and session learnings |

### 🔧 Code Quality

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 17 | `/review` | — | Perform structured code review with severity-based findings |
| 18 | `/test` | ✅ | Generate and run tests |
| 19 | `/debug` | — | Debug with hypotheses, experiments, and evidence |
| 20 | `/deep-audit` | — | Run a multi-pass exhaustive audit |
| 21 | `/fix-issue` | — | Investigate and apply a focused fix |
| 22 | `/gap-closure` | ✅ | Close verification or delivery gaps with a short follow-up loop |
| 23 | `/refactor` | — | Refactor safely with behavior preservation |
| 24 | `/audit` | ✅ | Run a broad codebase audit |
| 25 | `/quality-gate` | ✅ | Run build, lint, test, and security checks in the right preset |

### ⚙️ Operations & Security

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 26 | `/security-scan` | ✅ | Scan for vulnerabilities, secrets, and auth issues |
| 27 | `/performance` | ✅ | Profile and improve performance |
| 28 | `/migrate` | — | Handle database or code migrations safely |
| 29 | `/deploy-check` | ✅ | Validate deployment readiness |
| 30 | `/deps-update` | ✅ | Review and update outdated or vulnerable dependencies |
| 31 | `/incident-response` | — | Triage and document production incidents |
| 32 | `/product-health-check` | ✅ | Run an operational and completeness review |

### 🔄 Git & Release

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 33 | `/commit` | ✅ | Create a conventional commit with structured context |
| 34 | `/release` | — | Prepare a release, version bump, and publish flow |

### 🟣 Agent Intelligence

| # | Workflow | Turbo? | Description |
|:---:|:---|:---:|:---|
| 35 | `/memory-sync` | ✅ | Initialize, read, write, and compress project memory |
| 36 | `/team-session` | ✅ | Coordinate specialist agents through a team session |
| 37 | `/loop` | ✅ | Repeat bounded work across multiple targets |
| 38 | `/orchestrate` | ✅ | Chain multiple workflows into one higher-level objective |
| 39 | `/redesign` | — | Run ALENA's UI and UX redesign workflow |

---

## `/lmf` Workflow Notes

`/lmf` is the Antigravity entrypoint for ALENA's learning-first flow. It mirrors the local wrapper skill and is best used when you want tutorial-style explanation before you switch to `/plan`, `/execute`, or direct implementation. When the task is implementation-oriented, `/lmf` should also include copyable code blocks so the user can type the solution manually instead of handing execution to the agent.

## `/prd` Workflow Notes

`/prd` is the Antigravity entrypoint for ALENA's product requirements flow. It mirrors the local `write-prd` wrapper skill and is best used when you need a clarified product artifact before you move into `/plan` or implementation.

---

## 🏷️ Turbo Mode

Workflows with `// turbo` or `// turbo-all` annotations allow Antigravity to auto-execute steps without asking for user approval. This speeds up routine operations while keeping the workflow structure explicit.

**How it works:**
```markdown
### Step 1: Check project structure
// turbo
List the project directory and identify the tech stack.

### Step 2: Analyze dependencies
// turbo
Read package.json and identify all dependencies.
```

Both steps above auto-execute because they are marked `// turbo`.

`// turbo-all` marks the entire workflow for auto-execution.
