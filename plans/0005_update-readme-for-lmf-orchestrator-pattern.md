### [PLANNED] Update README for the LMF Orchestrator Pattern

**Goal**
Update `README.md` so ALENA clearly presents itself as the recommended local skill and agent-surface layer for the `lmf` orchestrator pattern, including the new `skills/lmf/` wrapper skill, the curated underlying skill bundle, and links to the `/lmf` command/workflow surfaces.

**Scope**
1. Add README positioning that ALENA provides the recommended skills and agent surfaces for the `lmf` orchestrator pattern.
2. Document the local `skills/lmf/` wrapper skill and the curated underlying `lmf` skill bundle used by that wrapper: `brainstorming`, `writing-plans`, and `writing-documentation`.
3. Add `/lmf` to the relevant README sections for local agent surfaces, especially the command/workflow asset catalog and related usage references.
4. Include both a short summary and a detailed table for the recommended `lmf` skill bundle.
5. Keep claims scoped to this repo: recommend how ALENA should be used with the external `radenadri/lmf` pattern, but do not claim direct implementation changes in that external repo.

**Tasks**
- [ ] Identify the exact README sections that should carry `/lmf` and orchestrator-pattern messaging, especially the quick-start/discovery text, Complete Asset Catalog, CLI reference, and documentation-oriented sections.
- [ ] Add a concise README explanation that frames ALENA as the source of the local `skills/lmf/` wrapper skill plus the recommended underlying skill bundle and agent surfaces for the `lmf` pattern, without implying that ALENA replaces or vendors the external orchestrator.
- [ ] Add a detailed README table for the recommended `lmf` bundle covering `brainstorming`, `writing-plans`, and `writing-documentation`, with each entry describing why it belongs under the `skills/lmf/` wrapper rather than being cloned into duplicates.
- [ ] Update the README asset and usage references so users can find `skills/lmf/`, Claude Code users can find `commands/lmf.md`, and Antigravity users can find `workflows/lmf.md`, while keeping the README focused on those local surfaces instead of documenting every agent.
- [ ] Run grep-based documentation checks to confirm the README uses the agreed positioning, the exact curated skill list, and `/lmf` references that match the newly added local surfaces.

**Verification**
- `rg -n "lmf|orchestrator pattern|brainstorming|writing-plans|writing-documentation|skills/lmf" README.md`
  Expected: README includes the agreed `lmf` positioning, the local wrapper skill, and the exact curated underlying skill bundle.
- `rg -n "skills/lmf|commands/lmf.md|workflows/lmf.md|/lmf" README.md`
  Expected: README points users to the local wrapper skill plus the new Claude Code and Antigravity `/lmf` surfaces.
- `sed -n '1,220p' README.md`
  Expected: top-level summary copy reads cleanly and does not overclaim about the external `radenadri/lmf` repository.
- `npm run build`
  Expected: build still succeeds after README and local surface references are updated.
