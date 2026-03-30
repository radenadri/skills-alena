# 🏁 Quick Start

> Get up and running with ALENA in 60 seconds

---

## Step 1: Install

```bash
npx @radenadri/skills-alena add
```

That's it. The CLI will:
- ✅ Auto-detect your installed agents
- ✅ Let you select which ones to install for
- ✅ Install the ALENA assets that apply to each selected agent

---

## Step 2: Choose Your Path

### 🟢 Starting a New Project?

Tell your AI agent:
```
/init-project
```

The agent will:
1. Create the `.planning/` directory (memory, state, config)
2. Ask you about the project scope, tech stack, and requirements
3. Create a ROADMAP with phases
4. Then suggest `/discuss` to lock your preferences

Full guide: [Getting Started — Greenfield](Getting-Started#-greenfield--building-from-scratch)

### 🟡 Working on an Existing Codebase?

Tell your AI agent:
```
/memory init
```

The agent will:
1. Create the `.planning/` directory
2. Scan your codebase automatically (patterns, conventions, tech stack)
3. Write everything it learns into `MEMORY.md`
4. Then you can `/discuss` your feature and `/plan` it

Full guide: [Getting Started — Brownfield](Getting-Started#-brownfield--existing-codebase)

### ⚡ Just a Quick Task?

```
/quick fix the login button CSS
```

No planning, no discussion. Just do the thing.

---

## Step 3: The Core Workflow

```
/discuss → /plan → /execute → /verify
```

| Step | What Happens |
|:---|:---|
| `/discuss` | AI asks multiple-choice questions, you answer in one line (`1A 2B 3C`) |
| `/plan` | AI creates a 2-3 task plan respecting your locked decisions |
| `/execute` | AI implements task by task with verification at each step |
| `/verify` | AI proves the implementation actually works |

---

## Step 4: Enable Persistent Memory (Optional)

Add these lines to your agent config to auto-enable memory:

### Antigravity (`~/.gemini/GEMINI.md`)
```markdown
## 🧠 Automatic Memory Protocol
ALWAYS at the START: check for .planning/MEMORY.md, read it first
ALWAYS at the END: update MEMORY.md, write handoffs/LATEST.md
```

### Cursor (auto-installed)
The `memory-protocol.mdc` rule is already installed. No extra setup needed.

### Claude Code
```
/memory init
```

---

## Step 5: Start a Team Session (Optional)

For complex tasks, tell your agent:

```
"Start a team session for: [describe your task]"
```

The agent will switch through specialist roles:
🔬 Researcher → 📐 Architect → 📋 Planner → ⚙️ Executor → 🔍 Reviewer

---

## What's Next?

- 🏁 **[Getting Started Guide](Getting-Started)** — Full greenfield vs brownfield walkthrough in plain English
- 📖 Read the [Skills Reference](Skills-Core-Development) for detailed skill docs
- ⚡ Check the [Commands Reference](Commands-Reference) for all Claude Code slash commands
- 🔄 Check the [Workflows Reference](Workflows-Reference) for all Antigravity workflows
- 💬 See the [/discuss examples](examples-commands-discuss) for MCQ decision capture
- 💾 Learn how memory and coordination work in [Skills Agent Intelligence](Skills-Agent-Intelligence)
- 🤝 Read [Council System](Council-System) for structured multi-agent work
