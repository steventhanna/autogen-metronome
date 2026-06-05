# autogen-metronome — Design

**Date:** 2026-06-04
**Status:** Approved

Auto-generated, strongly-typed Rust client for the [Metronome API](https://docs.metronome.com/),
modeled on [`autogen-squareup`](https://github.com/steventhanna/autogen-squareup). Generated code
is committed (no build-time generation, no proc macros); a thin hand-written wrapper handles auth.

## Goals

- One-to-one Rust types and async API methods for the full Metronome v1 surface.
- Regeneration is a single command (`./generate.sh`) that fetches the live spec, runs
  openapi-generator, applies known fixes, and verifies compilation.
- CI keeps the crate in lockstep with the upstream spec automatically.

## Spec Source

- URL: `https://api.metronome.com/v1/docs/openapi` (committed as `openapi.json`).
- OpenAPI **3.0.1**, 124 paths, 439 schemas, 134 nullable fields, single production server
  `https://api.metronome.com`, HTTP bearer auth.
- Chosen over the two other Metronome-served specs (`/v1/openapi.json` = 84 paths,
  `docs.metronome.com/openapi.json` = 125 paths) because it is the URL the user specified and is
  effectively the most complete.

## Generation Pipeline (`generate.sh`)

Mirrors Square's script. Steps:

1. `curl` the spec → `openapi.json`.
2. `openapi-generator generate -i openapi.json -g rust --library reqwest --skip-validate-spec
   --additional-properties=packageName=autogen-metronome,supportAsync=true -o .`
3. Remove generator cruft (`.travis.yml`, `git_push.sh`).
4. **Post-generation fixes** — idempotent `sed`/file-write steps for generator/spec bugs.
   The exact set is **discovered empirically on first generation**: run `cargo check`, patch what
   breaks, codify each fix. (Square needed 5; Metronome's set is determined during implementation.)
   Likely candidates given Metronome's shape: `models::models::` double-prefix in any
   multipart/file endpoints, type-inference failures, and any schema the spec references but never
   defines.
5. Re-apply `#[cfg(feature = "...")]` gates to `src/apis/mod.rs` via an `apply_gate` helper.
6. `cargo check` to verify.

`.openapi-generator-ignore` protects hand-written files: `Cargo.toml`, `src/lib.rs`,
`src/client.rs`, `README.md`, `.gitignore`.

Portable in-place sed helper (`sedi`) handles macOS vs. Linux, same as Square.

## Hand-Written Client (`src/client.rs`)

Metronome is single-environment + bearer, so this is simpler than Square (no `Environment` enum, no
API-version header):

```rust
pub struct MetronomeClient { configuration: Configuration }

impl MetronomeClient {
    pub fn new(token: &str) -> Self;                       // base: https://api.metronome.com
    pub fn with_base_url(token: &str, base_url: &str) -> Self; // proxies / testing
    pub fn config(&self) -> &Configuration;
}
```

- Sets `Configuration::bearer_access_token = Some(token)`.
- Sets `base_path = "https://api.metronome.com"` (paths already include `/v1/`).
- Sets `user_agent = "autogen-metronome/<CARGO_PKG_VERSION>"`.

`src/lib.rs` re-exports `MetronomeClient`, and the `apis` / `models` modules. Crate-level
`#![allow(unused_imports)]` and `#![allow(clippy::too_many_arguments)]`.

## Feature Gates (per-tag, default = all)

15 tag-derived API modules become 15 Cargo features. Models are **not** gated.

| Feature | Tag | Module |
|---|---|---|
| `alerts` | Alerts | `alerts_api` |
| `billable-metrics` | Billable metrics | `billable_metrics_api` |
| `contracts` | Contracts | `contracts_api` |
| `credits-and-commits` | Credits and commits | `credits_and_commits_api` |
| `custom-fields` | Custom fields | `custom_fields_api` |
| `customers` | Customers | `customers_api` |
| `invoices` | Invoices | `invoices_api` |
| `named-schedules` | Named schedules | `named_schedules_api` |
| `notifications` | Notifications | `notifications_api` |
| `packages` | Packages | `packages_api` (+ `default_api` for the untagged `/v1/packages/list`) |
| `products` | Products | `products_api` |
| `rate-cards` | Rate cards | `rate_cards_api` |
| `security` | Security | `security_api` |
| `settings` | Settings | `settings_api` |
| `usage` | Usage | `usage_api` |

Plus:
- `default = ["all", "native-tls"]`, `all = [<all 15>]`.
- TLS: `native-tls` (default) / `rustls`.
- `integration` — test-only gate.

The one untagged operation (`/v1/packages/list`) generates into `default_api`; fold it under the
`packages` gate during the gate-application step (or always-compile if folding proves awkward).

## Versioning — Content-Hash Based

- Crate starts at `0.1.0`.
- Commit a `SPEC_HASH` file containing the sha256 of `openapi.json`.
- On regeneration, compare the freshly fetched spec's hash to `SPEC_HASH`. If different: bump the
  **patch** version in `Cargo.toml`, update `SPEC_HASH`, regenerate. Each released version maps to
  exactly one spec snapshot. Independent of any date the spec does not expose.

## CI / Automation (full parity with Square)

- **`ci.yml`** — on push/PR to `main`: `cargo check --all-features`, `cargo test --all-features`,
  a minimal-features check (`--no-default-features --features "customers,native-tls"`), and an
  integration job gated on the `METRONOME_TOKEN` secret. Toolchain must be ≥ 1.85 (edition 2024).
- **`update-spec.yml`** — schedule (`0 9 * * 1,4`) + `workflow_dispatch`. Fetch spec → compare
  hash → if changed: regenerate inline (mirror generate.sh steps incl. post-fixes and gates), bump
  patch, run check/test, open PR on branch `update/metronome-spec-<shorthash>`. Skip if an open PR
  already exists for that hash.
- **`tag-release.yml`** — on merge of an `update/metronome-spec-*` PR into `main`, tag `v<version>`.

Any post-generation fix added to `generate.sh` must also be replicated in `update-spec.yml`'s inline
generation block.

## Nullable Fields

Keep openapi-generator's `Option<Option<T>>` + `serde_with::double_option`:
- `None` → field omitted from JSON
- `Some(None)` → field sent as `null`
- `Some(Some(v))` → field sent with value

## Cargo.toml

- `edition = "2024"` (requires Rust ≥ 1.85).
- Deps mirror Square: `reqwest` (default-features off; `json` + `multipart`), `serde`,
  `serde_json`, `serde_with` (`base64`, `std`, `macros`), `url`. Dev-deps: `tokio`, `uuid`.
- Metadata: license MIT, description, keywords (`metronome`, `billing`, `api`, `sdk`), repository.

## Tests

- `tests/client_test.rs` — base path, bearer token set correctly, `with_base_url` override. No live
  account required.
- Optional `#[cfg(feature = "integration")]` smoke tests behind `METRONOME_TOKEN`.
- Generated API methods are not unit-tested (require a live Metronome account).

## Docs

- `README.md` — install, quick start, environments/auth, usage examples, feature table, nullable
  semantics, regeneration instructions, architecture, license.
- `CLAUDE.md` — what this is, commands, generation pipeline, known post-generation fixes, hand-
  written vs. generated code, feature flags, versioning, editing guidelines.

## Known Risks

- Metronome's RPC-style paths (`/v1/alerts/create`) and inline/anonymous schemas may produce awkward
  generated names or generator bugs — handled by the empirical fix loop in step 4.
- Edition 2024 requires a recent toolchain; CI pins `dtolnay/rust-toolchain@stable` (currently
  ≥ 1.85).

## Non-Goals

- No hand-written ergonomic wrappers around generated API methods beyond the thin client.
- No build-time/proc-macro generation.
- No support for the other two Metronome spec URLs.
