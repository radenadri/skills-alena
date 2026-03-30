#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WIKI_SOURCE_DIR="${WIKI_SOURCE_DIR:-$ROOT_DIR/docs/wiki}"
WIKI_REMOTE_URL="${WIKI_REMOTE_URL:-https://github.com/radenadri/skills-alena.wiki.git}"
WIKI_BRANCH="${WIKI_BRANCH:-master}"
COMMIT_MESSAGE="${1:-docs: sync wiki from docs/wiki}"
TMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/skills-alena-wiki.XXXXXX")"

cleanup() {
  rm -rf "$TMP_DIR"
}

trap cleanup EXIT

if [[ ! -d "$WIKI_SOURCE_DIR" ]]; then
  echo "Wiki source directory not found: $WIKI_SOURCE_DIR" >&2
  exit 1
fi

if ! git ls-remote "$WIKI_REMOTE_URL" >/dev/null 2>&1; then
  cat >&2 <<EOF
GitHub Wiki remote not found: $WIKI_REMOTE_URL

This usually means the repository wiki is not enabled or has not been initialized yet.

Do this first:
1. Open https://github.com/radenadri/skills-alena
2. Go to Settings -> General -> Features
3. Enable Wikis
4. Open the Wiki tab in the repository
5. Create and save the first wiki page once

After that, rerun:
  npm run wiki:push
EOF
  exit 1
fi

echo "Cloning wiki repo..."
git clone --branch "$WIKI_BRANCH" "$WIKI_REMOTE_URL" "$TMP_DIR"

echo "Syncing files from $WIKI_SOURCE_DIR ..."
rsync -av --delete --exclude '.git/' "$WIKI_SOURCE_DIR/" "$TMP_DIR/"

cd "$TMP_DIR"

if [[ -z "$(git status --porcelain)" ]]; then
  echo "No wiki changes to push."
  exit 0
fi

echo "Committing wiki changes..."
git add .
git commit -m "$COMMIT_MESSAGE"

echo "Pushing to $WIKI_REMOTE_URL ($WIKI_BRANCH)..."
git push origin "$WIKI_BRANCH"

echo "Wiki sync complete."
