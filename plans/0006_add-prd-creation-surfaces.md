### [DONE] Add PRD Creation Surfaces for Claude Code and Antigravity

**Goal**
Introduce first-class PRD creation support in this repo through a dedicated local wrapper skill plus matching Claude Code and Antigravity surfaces, so ALENA can generate structured product requirements documents instead of relying on ad hoc skill composition.

**Scope**
1. Create a dedicated wrapper skill at `skills/write-prd/` that defines ALENA's local PRD creation behavior.
2. Create a real Claude Code command at `commands/prd.md`.
3. Create a real Antigravity workflow at `workflows/prd.md`.
4. Update `src/cli.ts`, `CLAUDE.md`, and `GEMINI.md` so `/prd` is discoverable both in-repo and in generated installed entrypoints.
5. Keep the PRD flow local-first and documentation-driven: it should interview for the actual problem, synthesize a PRD structure, and produce a reusable markdown artifact without depending on any external PRD generator.

**Tasks**
- [x] Review existing `skills/*`, `commands/*.md`, and `workflows/*.md` conventions, then define a single PRD prompt contract that keeps the wrapper skill, Claude command, and Antigravity workflow aligned.
- [x] Create `skills/write-prd/` as a real wrapper skill that composes `brainstorming` and `writing-documentation`, and uses planning logic only where it improves the implementation handoff instead of turning the PRD into an execution plan.
- [x] Create `commands/prd.md` as a real installable Claude Code slash command that runs the local PRD flow and guides the agent to interview first, clarify scope, and produce a structured PRD output.
- [x] Create `workflows/prd.md` as a real Antigravity workflow that mirrors the same PRD contract in workflow form, including workflow-specific guidance for gathering context before drafting.
- [x] Update `src/cli.ts`, `CLAUDE.md`, and `GEMINI.md` so `/prd` appears in the surfaced command/workflow inventories and generated install-time activation text.
- [x] Smoke-test the new skill and surfaces by building the package and grepping the new files plus generated CLI output for `prd`, `product requirements`, and the expected interview-first wording.

**Verification**
- `test -f skills/write-prd/SKILL.md && test -f commands/prd.md && test -f workflows/prd.md`
  Expected: the wrapper skill and both new `/prd` surface files exist.
- `rg -n "/prd|PRD|product requirements|requirements document|interview" skills/write-prd commands/prd.md workflows/prd.md CLAUDE.md GEMINI.md src/cli.ts`
  Expected: the wrapper skill, both surface files, both entrypoints, and the CLI generator clearly reference PRD creation and the interview-first workflow.
- `npm run build`
  Expected: build succeeds after adding the new PRD skill and surfaces.
- `node dist/cli.js list`
  Expected: the CLI catalog shows the new PRD skill plus `/prd` command and workflow surfaces.
