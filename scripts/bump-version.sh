#!/bin/bash
# Bump the crate patch version. Used when the spec hash changes.
# Usage: scripts/bump-version.sh
set -euo pipefail

CUR=$(grep '^version' Cargo.toml | head -1 | sed 's/.*"\(.*\)"/\1/')
IFS='.' read -r MAJOR MINOR PATCH <<< "$CUR"
NEW="${MAJOR}.${MINOR}.$((PATCH + 1))"

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s/^version = \".*\"/version = \"$NEW\"/" Cargo.toml
else
  sed -i "s/^version = \".*\"/version = \"$NEW\"/" Cargo.toml
fi

echo "$CUR -> $NEW"
