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

# Pinned generator version. The JAR is fetched directly from Maven Central (cached under
# ~/.cache) so local and CI runs are byte-for-byte identical — no dependence on a brew/npm
# install whose default generator version drifts. Bumping this is a deliberate act: it can
# change generated output (e.g. the String -> chrono date-time switch in 7.15+, which requires
# the chrono dependency in Cargo.toml). Regenerate and review the diff when you change it.
GENERATOR_VERSION="${GENERATOR_VERSION:-7.23.0}"
JAR_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/openapi-generator"
JAR="$JAR_CACHE/openapi-generator-cli-${GENERATOR_VERSION}.jar"
if [ ! -f "$JAR" ]; then
  echo "==> Fetching openapi-generator ${GENERATOR_VERSION} JAR..."
  mkdir -p "$JAR_CACHE"
  curl -sS -L --fail -o "$JAR" \
    "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${GENERATOR_VERSION}/openapi-generator-cli-${GENERATOR_VERSION}.jar"
fi

echo "==> Fetching Metronome OpenAPI spec..."
curl -sS -L -o openapi.json "$SPEC_URL"
echo "    Downloaded $(wc -c < openapi.json | tr -d ' ') bytes"

echo "==> Recording spec hash..."
shasum -a 256 openapi.json | awk '{print $1}' > SPEC_HASH
echo "    SPEC_HASH = $(cat SPEC_HASH)"

echo "==> Running openapi-generator ${GENERATOR_VERSION}..."
java -jar "$JAR" generate \
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
# Metronome's spec generates cleanly — no fixes to generated code are currently needed.
# If a future spec revision introduces a generator/spec bug, add an idempotent fix here
# (guard file-writes with grep -q; use sedi for in-place edits) AND replicate it in
# .github/workflows/update-spec.yml.

echo "==> Re-applying feature gates to apis/mod.rs..."
apply_gate() {
  local mod_name="$1" feature="$2"
  sedi "s/^pub mod ${mod_name};/#[cfg(feature = \"${feature}\")]\\"$'\n'"pub mod ${mod_name};/" src/apis/mod.rs
}

apply_gate alerts_api alerts
apply_gate billable_metrics_api billable-metrics
apply_gate contracts_api contracts
apply_gate credits_and_commits_api credits-and-commits
apply_gate custom_fields_api custom-fields
apply_gate customers_api customers
apply_gate default_api packages
apply_gate invoices_api invoices
apply_gate named_schedules_api named-schedules
apply_gate notifications_api notifications
apply_gate packages_api packages
apply_gate products_api products
apply_gate rate_cards_api rate-cards
apply_gate security_api security
apply_gate settings_api settings
apply_gate usage_api usage

echo "==> Verifying compilation..."
cargo check --all-features
cargo check --no-default-features --features "customers,native-tls"

echo "==> Done. Review changes with: git diff"
