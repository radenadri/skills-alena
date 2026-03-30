# 🏁 Installation Guide

## Prerequisites

- **Node.js** 18.0.0 or later
- One or more AI coding agents installed

---

## 🚀 One-Command Install

```bash
npx @radenadri/skills-alena add
```

This will:
1. ✅ Auto-detect installed agents on your system
2. ✅ Let you select which agents to install for
3. ✅ Install the ALENA assets that apply to each selected agent
4. ✅ Show a detailed summary of what was installed

---

## 🎯 Agent-Specific Installation

### 🟣 Claude Code
```bash
npx @radenadri/skills-alena add --agent claude-code
```
**Installs to:**
| Asset | Directory |
|:---|:---|
| Skills (35) | `.claude/skills/{skill-name}/SKILL.md` |
| Commands (36) | `.claude/commands/{name}.md` |
| Agents (9) | `.claude/agents/{name}.md` |
| Rules (5) | CLAUDE.md (appended) |

`/lmf` is installed here as `.claude/commands/lmf.md`, and it composes the local `lmf` wrapper skill.
`/prd` is installed here as `.claude/commands/prd.md`, and it uses the local `write-prd` wrapper skill.

### 🔵 Cursor
```bash
npx @radenadri/skills-alena add --agent cursor
```
**Installs to:**
| Asset | Directory |
|:---|:---|
| Skills (35) | `.cursor/skills/{skill-name}/SKILL.md` |
| Cursor Rules (10) | `.cursor/rules/{name}.mdc` |

### 🟢 Antigravity (Gemini)
```bash
npx @radenadri/skills-alena add --agent antigravity
```
**Installs to:**
| Asset | Directory |
|:---|:---|
| Skills (35) | `.agent/skills/{skill-name}/SKILL.md` |
| Workflows (39) | `.agent/workflows/{name}.md` |

`/lmf` is installed here as `.agent/workflows/lmf.md`, and it uses the same local `lmf` wrapper skill.
`/prd` is installed here as `.agent/workflows/prd.md`, and it mirrors the same local PRD wrapper skill.

---

## 🌍 Global vs Local

### Local (default)
```bash
npx @radenadri/skills-alena add
```
Installs into the **current project directory**. Skills are available only in this project.

### Global
```bash
npx @radenadri/skills-alena add --global
```
Installs into your **home directory** agent config. Skills are available in ALL projects.

| Agent | Global Directory |
|:---|:---|
| Claude Code | `~/.claude/skills/` |
| Cursor | `~/.cursor/skills/` |
| Antigravity | `~/.gemini/antigravity/skills/` |

> ⚠️ **Note:** Commands, workflows, agents, and rules are only installed locally (not globally), as they are project-specific.

That matters for PRD drafting too: global install gives you the `write-prd` skill, but the Claude Code `/prd` command and Antigravity `/prd` workflow are local-only surfaces.

---

## 📦 Selective Installation

### Install specific skills
```bash
npx @radenadri/skills-alena add persistent-memory agent-team-coordination
npx @radenadri/skills-alena add code-review systematic-debugging
npx @radenadri/skills-alena add brainstorming writing-plans executing-plans
npx @radenadri/skills-alena add lmf brainstorming writing-plans writing-documentation
npx @radenadri/skills-alena add write-prd brainstorming writing-documentation
```

### Install all skills
```bash
npx @radenadri/skills-alena add --all
```

---

## 🔄 Updating

Re-run the install command to update to the latest versions:
```bash
npx @radenadri/skills-alena@latest add
```

Files are overwritten with the latest versions. Custom modifications to CLAUDE.md are preserved (appended, not overwritten).

---

## ✅ Post-Installation Setup

### For Persistent Memory
Add this to your `~/.gemini/GEMINI.md` (Antigravity) or agent config:

```markdown
## 🧠 Automatic Memory Protocol
ALWAYS at the START of every conversation:
1. Check if `.planning/MEMORY.md` exists
2. If yes, read it FIRST before doing anything else
3. Also read `.planning/handoffs/LATEST.md` if it exists

ALWAYS at the END of significant work:
1. Update `.planning/MEMORY.md` with new learnings
2. Write `.planning/handoffs/LATEST.md` for the next session
3. Keep MEMORY.md under 300 lines
```

### For Agent Teams
No additional setup needed. Just tell your agent:
```
Start a team session for: [describe your task]
```
