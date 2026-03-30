#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VERSION_BUMP="${1:-none}"
NPM_TAG="${NPM_TAG:-latest}"
PUBLISH_ACCESS="${PUBLISH_ACCESS:-public}"
NPM_CACHE_DIR="${NPM_CONFIG_CACHE:-$(mktemp -d "${TMPDIR:-/tmp}/skills-alena-npm-cache.XXXXXX")}"
CREATED_NPM_CACHE_DIR=0

if [[ -n "${NPM_CONFIG_CACHE:-}" ]]; then
  CREATED_NPM_CACHE_DIR=1
fi

usage() {
  cat <<'EOF'
Usage:
  bash scripts/publish-npm.sh
  bash scripts/publish-npm.sh patch
  bash scripts/publish-npm.sh minor
  bash scripts/publish-npm.sh major

Behavior:
  - Verifies npm authentication
  - Requires a clean git working tree
  - Runs the build
  - Optionally bumps package version
  - Publishes to npmjs
  - Pushes git commits and tags when a version bump was created

Environment overrides:
  NPM_TAG=latest|next|beta
  PUBLISH_ACCESS=public|restricted
EOF
}

if [[ "$VERSION_BUMP" == "-h" || "$VERSION_BUMP" == "--help" ]]; then
  usage
  exit 0
fi

case "$VERSION_BUMP" in
  none|patch|minor|major)
    ;;
  *)
    echo "Invalid version bump: $VERSION_BUMP" >&2
    usage >&2
    exit 1
    ;;
esac

cd "$ROOT_DIR"

export NPM_CONFIG_CACHE="$NPM_CACHE_DIR"

cleanup() {
  if [[ "$CREATED_NPM_CACHE_DIR" == "0" ]]; then
    rm -rf "$NPM_CACHE_DIR"
  fi
}

trap cleanup EXIT

if ! command -v npm >/dev/null 2>&1; then
  echo "npm is required but was not found in PATH." >&2
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git is required but was not found in PATH." >&2
  exit 1
fi

if [[ -n "$(git status --short)" ]]; then
  cat >&2 <<'EOF'
Git working tree is not clean.

Commit or stash your changes before publishing so the released package matches the repository state.
EOF
  exit 1
fi

if ! npm whoami >/dev/null 2>&1; then
  cat >&2 <<'EOF'
npm authentication failed.

Run one of these first:
  npm login
  npm whoami

If you publish from CI, make sure NODE_AUTH_TOKEN or an .npmrc token is configured.
EOF
  exit 1
fi

echo "Building package..."
npm run build

if [[ "$VERSION_BUMP" != "none" ]]; then
  echo "Bumping version: $VERSION_BUMP"
  npm version "$VERSION_BUMP"
fi

echo "Publishing to npm (tag: $NPM_TAG, access: $PUBLISH_ACCESS)..."
npm publish --tag "$NPM_TAG" --access "$PUBLISH_ACCESS"

if [[ "$VERSION_BUMP" != "none" ]]; then
  echo "Pushing git commits and tags..."
  git push --follow-tags
fi

echo "npm publish complete."
