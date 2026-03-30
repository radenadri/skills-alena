### [DONE] Scope npm Package to @radenadri/skills-alena

**Goal**
Change the npm package identity from `skills-alena` to `@radenadri/skills-alena` while keeping the release line locked to `v1.0.0`, updating publish/install/docs surfaces accordingly, and making the resulting package/release workflow coherent for npmjs and GitHub Packages.

**Scope**
1. Update package metadata, publish configuration, and release automation so the canonical package name becomes `@radenadri/skills-alena`.
2. Update all user-facing installation and publish documentation to use the scoped package form, especially `npx @radenadri/skills-alena add`.
3. Converge package identity across npmjs and GitHub Packages so both point at `@radenadri/skills-alena`.
4. Keep the release line at `1.0.0`; this is a pre-release identity correction, not a new semantic release series.
5. Explicitly handle the shell-command constraint: package scope and executable name are not the same thing. The implementation preserves the shell-safe executable `skills-alena` while moving the published package to `@radenadri/skills-alena`.

**Tasks**
- [x] Inventory all package-identity references: `package.json`, lockfiles, `src/cli.ts`, `dist/`, `README.md`, `docs/`, wiki pages, scripts, publish helpers, and any GitHub workflow/config files that still assume the unscoped package name.
- [x] Update package metadata for scoped publish: `package.json` name, publish/repository metadata, npm publish scripts, local-package test scripts, and any registry-facing configuration so npmjs and GitHub Packages consistently target `@radenadri/skills-alena`.
- [x] Rewrite installation and release documentation to use the scoped package invocation by default, including `README.md`, `docs/index.html`, `docs/wiki/**`, and helper scripts/messages that currently show `npx @radenadri/skills-alena ...`.
- [x] Review CLI/runtime naming separately from package naming and keep a shell-safe executable contract. If the requested fully scoped executable name is not technically viable as a command, document and preserve the nearest correct behavior instead of shipping a broken CLI contract.
- [x] Update local verification/release tooling so pre-publish tests, `npm pack` flows, and release scripts all validate the scoped package output and surface clear auth/publish errors.
- [x] Run a final audit for stale unscoped package references and mixed-package messaging, allowing only intentional compatibility notes if you choose to keep any.

**Verification**
- `rg -n "\"name\"\\s*:\\s*\"skills-alena\"|npx skills-alena|npm i skills-alena|www.npmjs.com/package/skills-alena" package.json README.md docs scripts src workflows commands 2>/dev/null`
  Expected: no stale canonical package-install references remain; any remaining unscoped `skills-alena` strings are limited to intentional executable, hook, or manifest identifiers.
- `rg -n "@radenadri/skills-alena|npx @radenadri/skills-alena|gitHub Packages|GitHub Packages|npmjs" package.json README.md docs scripts src 2>/dev/null`
  Expected: scoped package identity is present across metadata, docs, and publish automation.
- `npm run build`
  Expected: build succeeds after package metadata and string changes.
- `npm pack`
  Expected: tarball is created successfully for the scoped package metadata.
- `npm run test:local-package`
  Expected: local tarball installation flow succeeds after the scoped-package migration.
- Manual review of publish/install copy in `README.md`, `docs/index.html`, and `docs/wiki/Home.md`
  Expected: the package identity is consistently scoped, version stays `1.0.0`, and docs do not promise a technically invalid executable name.
