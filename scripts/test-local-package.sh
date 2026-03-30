#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/skills-alena-local-test.XXXXXX")"
NPM_CACHE_DIR="$(mktemp -d "${TMPDIR:-/tmp}/skills-alena-npm-cache.XXXXXX")"
KEEP_ARTIFACTS="${KEEP_ARTIFACTS:-0}"

cleanup() {
  if [[ "$KEEP_ARTIFACTS" != "1" ]]; then
    rm -rf "$TMP_DIR"
  fi
  rm -rf "$NPM_CACHE_DIR"
}

trap cleanup EXIT

cd "$ROOT_DIR"
export NPM_CONFIG_CACHE="$NPM_CACHE_DIR"

echo "Building package..."
npm run build

echo "Packing tarball..."
TARBALL="$(npm pack --silent | tail -n 1)"
TARBALL_PATH="$ROOT_DIR/$TARBALL"

if [[ ! -f "$TARBALL_PATH" ]]; then
  echo "Expected tarball not found: $TARBALL_PATH" >&2
  exit 1
fi

echo "Running CLI from tarball..."
npx --yes --package "$TARBALL_PATH" skills-alena --help >/dev/null

echo "Creating temporary test project at $TMP_DIR"
cd "$TMP_DIR"

echo "Installing package into Codex-compatible local paths..."
npx --yes --package "$TARBALL_PATH" skills-alena add --all -a codex -y >/dev/null

EXPECTED_FILES=(
  ".agents/skills/systematic-debugging/SKILL.md"
  ".agents/skills/persistent-memory/SKILL.md"
  "AGENTS.md"
)

for file in "${EXPECTED_FILES[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Expected file missing after install: $file" >&2
    exit 1
  fi
done

echo "Verifying installed skill count..."
SKILL_COUNT="$(find .agents/skills -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')"
echo "Installed skills: $SKILL_COUNT"

if [[ "$SKILL_COUNT" -lt 30 ]]; then
  echo "Unexpectedly low installed skill count: $SKILL_COUNT" >&2
  exit 1
fi

echo
echo "Local package test passed."
echo "Tarball: $TARBALL_PATH"
echo "Test project: $TMP_DIR"

if [[ "$KEEP_ARTIFACTS" != "1" ]]; then
  rm -f "$TARBALL_PATH"
fi
