#!/bin/bash
set -euo pipefail

# Portable in-place sed (macOS uses -i '', Linux uses -i)
sedi() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "$@"
  else
    sed -i "$@"
  fi
}

SPEC_URL="https://api.metronome.com/v1/docs/openapi"

echo "==> Fetching Metronome OpenAPI spec..."
curl -sS -L -o openapi.json "$SPEC_URL"
echo "    Downloaded $(wc -c < openapi.json | tr -d ' ') bytes"

echo "==> Recording spec hash..."
shasum -a 256 openapi.json | awk '{print $1}' > SPEC_HASH
echo "    SPEC_HASH = $(cat SPEC_HASH)"

echo "==> Running openapi-generator..."
openapi-generator generate \
  -i openapi.json \
  -g rust \
  --library reqwest \
  --skip-validate-spec \
  --additional-properties=packageName=autogen-metronome,supportAsync=true \
  -o . \
  2>&1 | tail -5

echo "==> Cleaning up generated files we don't need..."
rm -f .travis.yml git_push.sh

echo "==> Applying post-generation fixes..."
# (filled in during Task 2)

echo "==> Re-applying feature gates to apis/mod.rs..."
# (filled in during Task 5 — leave as-is for now)

echo "==> Verifying compilation..."
cargo check

echo "==> Done. Review changes with: git diff"
