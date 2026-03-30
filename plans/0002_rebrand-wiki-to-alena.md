### [DONE] Rebrand Wiki to ALENA

**Goal**
Rewrite the `docs/wiki` surface so it reads as ALENA-first documentation: consistent ALENA branding, `v1.0.0` versioning, personal-toolkit tone, corrected repo/package links, and example pages that match the current ALENA identity while keeping upstream inspiration credited appropriately.

**Scope**
1. Rebrand all core wiki pages under `docs/wiki/` from inherited upstream framing to ALENA-first documentation, including product naming, package commands, repo URLs, version references, and tone.
2. Rebase inherited historical references like `v4.x` and `v3.x` to ALENA `v1.0.0` where they are presented as current release history or capability framing.
3. Keep upstream attribution in the right places, but remove wiki-wide ownership confusion so ALENA is the documented product throughout the wiki.
4. Rebrand and align all `docs/wiki/examples-*` pages so examples, commands, package names, and references match ALENA.
5. Update linked documentation surfaces outside `docs/wiki` only where needed for broken links, mismatched navigation, or wiki consistency, especially `README.md`, `docs/index.html`, and related wiki-entry references.

**Tasks**
- [x] Inventory the full wiki surface: core pages, reference pages, navigation files, and all `examples-*` pages; group them by rewrite depth needed (`brand-only`, `version-only`, `full narrative rewrite`).
- [x] Rewrite core wiki entry pages such as `Home.md`, `Getting-Started.md`, `Quick-Start.md`, `Installation-Guide.md`, `_Sidebar.md`, and major reference indexes so ALENA is the primary documented product and `v1.0.0` is the active release line.
- [x] Rewrite wiki reference pages that still preserve upstream product history, release framing, or inherited voice, including council/agents/commands/skills overview pages, to match ALENA’s personal-toolkit positioning and current architecture.
- [x] Rebrand all `docs/wiki/examples-*` pages so command examples, product references, package names, and explanatory copy are consistent with ALENA and do not preserve stale upstream version framing.
- [x] Review cross-links between the wiki and related docs surfaces (`README.md`, `docs/index.html`, and any linked docs pages) and fix navigation, repo/package references, and version mismatches introduced by the wiki rewrite.
- [x] Add or preserve explicit attribution to `skills-by-amrit` only where it helps explain inspiration or origin, while avoiding repeated fork-language that makes the wiki feel like an imported archive.
- [x] Run a final grep audit across `docs/wiki/**` and the touched linked-doc surfaces for stale brand names, wrong repo/package links, old version references, and inherited tone markers.

**Verification**
- `rg -n "Skills by Amrit|skills-by-amrit|v4\\.|v3\\.|boparaiamrit|ultimate|staff engineers" docs/wiki README.md docs/index.html 2>/dev/null`
  Expected: no stale wiki-facing branding, old release-line references, or inherited tone markers remain except for intentional attribution where explicitly kept.
- `rg -n "ALENA|skills-alena|v1\\.0\\.0|radenadri/skills-alena" docs/wiki README.md docs/index.html 2>/dev/null`
  Expected: the wiki and its linked doc surfaces consistently reference ALENA, the current package/repo identity, and `v1.0.0`.
- `find docs/wiki -maxdepth 1 -type f | wc -l`
  Expected: the wiki page set remains intact after rewrite; no pages are accidentally dropped.
- Manual review of `docs/wiki/Home.md`, `docs/wiki/_Sidebar.md`, and at least 3 representative `examples-*` pages
  Expected: the wiki reads as a coherent ALENA handbook rather than a partially rebranded upstream archive.
- Manual review of attribution language
  Expected: upstream inspiration is credited clearly where intended, without making ALENA ownership or product identity ambiguous.
