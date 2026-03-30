### [DONE] Rebrand Skills by Amrit to ALENA

**Goal**
Rebrand this project from `Skills by Amrit` to `ALENA (Autonomous Layer for Executing Networked Agents)` and change the package/CLI identity from `skills-by-amrit` to `@radenadri/skills-alena`, while preserving functionality and keeping required MIT license attribution intact.

**Scope**
1. Update package identity in `package.json`, npm/bin naming, manifest filenames, hook identifiers, CLI help text, version/status output, and generated entrypoint content under `src/` and `hooks/`.
2. Update project-facing branding across root docs and entrypoints including `README.md`, `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, `.github/GEMINI.md`, examples, and generated docs in `docs/`.
3. Update release/distribution references in `.github/workflows/`, funding metadata, publish configuration, docker image names, npm install commands, website/repository links, and package scope references that still point to `skills-by-amrit` or the upstream identity.
4. Audit markdown assets, docs/wiki pages, templates, and examples for stale brand strings, commands, metadata generators, and user-facing copy that would leave mixed branding after publish.
5. Preserve the MIT `LICENSE` notice and avoid removing original copyright/license text even if author/package branding is updated elsewhere.
6. Present ALENA as a personal toolkit, not an enterprise platform, and use the acronym expansion sparingly: introduce it early, then default to `ALENA`.

**Tasks**
- [x] Inventory all references to `Skills by Amrit`, `skills-by-amrit`, `Amritpal Singh`, `boparaiamrit`, and related upstream URLs; group findings into runtime-critical, publish-critical, and docs-only buckets.
- [x] Update runtime/package identity: `package.json` name/bin/repository/homepage/bugs/author fields, CLI copy in `src/cli.ts`, manifest and hook identifiers, generated install/status/help text, and hook package checks in `hooks/`.
- [x] Update distribution and release surfaces: `.github/workflows/*`, docker image tags, publish scope/package references, funding/custom links, and any automation that still assumes the old npm package or repo name.
- [x] Update documentation and content surfaces: `README.md`, root instruction files, docs site HTML, wiki pages, examples, and generated metadata strings so install commands and branding consistently use `ALENA` and `@radenadri/skills-alena`, with `Autonomous Layer for Executing Networked Agents` introduced once or in limited high-context places rather than repeated everywhere.
- [x] Run a final grep audit to confirm no unintended old-brand references remain except legally required license/copyright text and any explicit historical attribution notes you choose to keep.
- [x] Finalize maintainer/publisher identity before release: replace upstream author details, footer links, funding links, and publish scope only after the target GitHub repo/org, npm owner/scope, homepage, and support links are confirmed.
- [x] Review user-facing copy for tone drift: remove or rewrite language that frames the project as a broad “ultimate framework” if it conflicts with the intended ALENA positioning as your personal toolkit.

**Verification**
- `rg -n "Skills by Amrit|skills-by-amrit|boparaiamrit|Amritpal Singh" README.md package.json src hooks docs commands skills agents templates workflows examples .github AGENTS.md CLAUDE.md GEMINI.md`
  Expected: only intentional historical/license references remain.
- `rg -n "ALENA|skills-alena|Autonomous Layer for Executing Networked Agents" README.md package.json src hooks docs .github AGENTS.md CLAUDE.md GEMINI.md`
  Expected: new brand appears in package metadata, CLI text, docs, and entrypoint content, with the long-form expansion used selectively rather than spammed across files.
- `npm run build`
  Expected: build succeeds after package/bin/string changes.
- `node dist/cli.js --version` or equivalent built CLI invocation
  Expected: version/help output references `@radenadri/skills-alena` / `ALENA`.
- `node dist/cli.js help`
  Expected: install examples and usage text use `npx @radenadri/skills-alena ...`.
- Manual review of `LICENSE`
  Expected: MIT license text remains present and unchanged where legally required.
- Manual review of `README.md` and docs landing copy
  Expected: ALENA reads as a personal toolkit with a clean full-fork identity, not a mixed-brand or enterprise-marketing clone.
