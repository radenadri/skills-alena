### [DONE] Update README and Wiki for the PRD Creation Flow

**Goal**
Update the public docs so ALENA clearly documents its new PRD creation capability, including the local wrapper skill, the Claude Code and Antigravity `/prd` surfaces, and the expected interview-first PRD workflow.

**Scope**
1. Update `README.md` so the new PRD capability is visible in the main product story, asset catalog, CLI guidance, and documentation links.
2. Update the wiki pages in `docs/wiki/` that describe installation, core skills, commands, workflows, examples, and navigation so the PRD flow is documented consistently.
3. Add curated example pages for the PRD skill, command, and workflow so the wiki remains complete rather than mentioning `/prd` only in reference tables.
4. Keep claims scoped to this repo and its local assets; document what ALENA ships here instead of implying external integrations or hosted PRD tooling.

**Tasks**
- [x] Identify the exact README and wiki sections that should carry PRD messaging, especially the top-level overview, Complete Asset Catalog, CLI reference, installation guidance, commands reference, workflows reference, examples index, and wiki sidebar.
- [x] Add concise README positioning for ALENA's PRD flow, including how `write-prd` differs from generic planning and how `/prd` connects brainstorming and documentation into a product artifact.
- [x] Add or update README catalog entries for the `write-prd` skill plus `/prd` command and workflow, and refresh any counts affected by the new assets.
- [x] Update the relevant wiki reference pages and add example pages so users can find the PRD capability from both the install docs and the examples/navigation surfaces.
- [x] Run grep-based documentation checks to confirm the docs use the agreed PRD naming and point to the right local files and slash surfaces.

**Verification**
- `rg -n "write-prd|/prd|PRD|product requirements" README.md docs/wiki`
  Expected: README and wiki consistently document the new PRD flow and local surfaces.
- `rg -n "commands/prd.md|workflows/prd.md|skills/write-prd" README.md docs/wiki`
  Expected: docs point users to the new local PRD skill and agent surfaces.
- `sed -n '1,220p' README.md`
  Expected: the top-level README copy reads cleanly and positions PRD creation as a local ALENA capability.
- `npm run build`
  Expected: build still succeeds after the docs and references are updated.
