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

# Fix 1: Cargo.toml is in .openapi-generator-ignore so the generator cannot write it.
# Write the generator-canonical Cargo.toml with all required dependencies so `cargo check` works.
# This is NOT a hand-written file — it is the generator's own dependency list.
# (Later tasks will replace this with a hand-crafted Cargo.toml that adds workspace / feature flags.)
echo "    Writing generated Cargo.toml with required dependencies..."
cat > Cargo.toml << 'CARGO_EOF'
[package]
name = "autogen-metronome"
version = "1.0.0"
authors = ["OpenAPI Generator team and contributors"]
description = "Auto-generated Rust client for the Metronome API"
license = "Unlicense"
edition = "2021"

[dependencies]
serde = { version = "^1.0", features = ["derive"] }
serde_with = { version = "^3.8", default-features = false, features = ["base64", "std", "macros"] }
serde_json = "^1.0"
serde_repr = "^0.1"
url = "^2.5"
uuid = { version = "^1.8", features = ["serde", "v4"] }
reqwest = { version = "^0.12", default-features = false, features = ["json", "multipart"] }
CARGO_EOF

# Fix 2: src/lib.rs is in .openapi-generator-ignore so the generator cannot write it.
# Write the generator-canonical lib.rs that exposes the generated apis and models modules.
# (Later tasks will replace this with a hand-crafted lib.rs that adds the client module.)
echo "    Writing generated src/lib.rs exposing apis and models modules..."
cat > src/lib.rs << 'LIB_EOF'
#![allow(unused_imports)]
#![allow(clippy::too_many_arguments)]

extern crate serde_repr;
extern crate serde;
extern crate serde_json;
extern crate url;
extern crate reqwest;

pub mod apis;
pub mod models;
LIB_EOF

echo "==> Re-applying feature gates to apis/mod.rs..."
# (filled in during Task 5 — leave as-is for now)

echo "==> Verifying compilation..."
cargo check

echo "==> Done. Review changes with: git diff"
