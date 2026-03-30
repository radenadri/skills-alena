### [DONE] Add /lmf Agent Surfaces for Claude Code and Antigravity

**Goal**
Introduce `/lmf` as a real tutorial-first agent surface in this repo for Claude Code and Antigravity, backed by a dedicated local wrapper skill that composes existing ALENA skills instead of duplicating them.

**Scope**
1. Create a dedicated wrapper skill at `skills/lmf/` that defines the local `/lmf` behavior by composing existing ALENA skills.
2. Create a real Claude Code command at `commands/lmf.md`.
3. Create a real Antigravity workflow at `workflows/lmf.md`.
4. Update `CLAUDE.md` and `GEMINI.md` so `/lmf` is discoverable in both entrypoints.
5. Keep the implementation local-first and documentation-driven: the wrapper skill and agent surfaces should produce learning-first tutorial/explanation output directly, not shell out to a local `lmf.sh` helper.
6. Keep this repo scoped to its own assets and agent surfaces; do not implement changes inside the external `radenadri/lmf` repository from this plan.

**Tasks**
- [x] Review existing `skills/*`, `commands/*.md`, and `workflows/*.md` conventions, then define a single `/lmf` prompt contract so the wrapper skill, Claude command, and Antigravity workflow all align on the same learning-first behavior.
- [x] Create `skills/lmf/` as a real wrapper skill that orchestrates the existing `brainstorming`, `writing-plans`, and `writing-documentation` skills without cloning or forking their content into duplicate copies.
- [x] Create `commands/lmf.md` as a real installable Claude Code slash command that invokes the local `/lmf` behavior through the wrapper skill and preserves tutorial-style output.
- [x] Create `workflows/lmf.md` as a real Antigravity workflow that mirrors the same `/lmf` contract in workflow form, including any workflow-specific framing needed for safe auto-execution.
- [x] Update `CLAUDE.md` and `GEMINI.md` to mention `/lmf` plus the new local `skills/lmf/` wrapper so the relationship between skill and agent surfaces is explicit.
- [x] Smoke-test the new skill and surfaces by building the package and grepping the new files for `/lmf` naming plus the expected learning-first/tutorial wording.

**Verification**
- `test -f skills/lmf/SKILL.md && test -f commands/lmf.md && test -f workflows/lmf.md`
  Expected: the wrapper skill and both new `/lmf` surface files exist.
- `rg -n "/lmf|tutorial|learning-first|explanation|brainstorming|writing-plans|writing-documentation" skills/lmf commands/lmf.md workflows/lmf.md CLAUDE.md GEMINI.md`
  Expected: the wrapper skill, both surface files, and both entrypoints clearly reference `/lmf`, its tutorial-first behavior, and the composed underlying skills.
- `npm run build`
  Expected: build succeeds after adding the new skill and `/lmf` surfaces.
- `rg -n "/lmf" README.md skills commands workflows CLAUDE.md GEMINI.md`
  Expected: `/lmf` is discoverable in the intended local skill and agent surfaces without accidental duplication elsewhere.
