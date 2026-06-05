# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Auto-generated Rust client for the Metronome API. Code in `src/apis/` and `src/models/` is generated
by openapi-generator from `openapi.json` (the Metronome OpenAPI spec). Only `src/lib.rs` and
`src/client.rs` are hand-written.

## Commands

```bash
cargo check --all-features                                  # build / type check
cargo test --all-features                                   # run tests
cargo check --no-default-features --features "customers,native-tls"  # validate feature gates
./generate.sh                                               # regenerate from latest spec
cargo doc --no-deps                                         # generate docs
```

## Architecture

### Code Generation Pipeline

`generate.sh` drives everything:
1. Fetches the Metronome OpenAPI spec (`https://api.metronome.com/v1/docs/openapi`) -> `openapi.json`
2. Records `SPEC_HASH` (sha256 of the spec)
3. Runs `openapi-generator generate` with the rust + reqwest template
4. Applies post-generation fixes for known spec/generator bugs (currently none are needed)
5. Re-applies `#[cfg(feature = "...")]` gates to `src/apis/mod.rs`
6. Runs `cargo check --all-features` and a no-default-features build

`.openapi-generator-ignore` protects hand-written files (`Cargo.toml`, `src/lib.rs`, `src/client.rs`,
`README.md`, `CLAUDE.md`, `.gitignore`).

### Hand-Written Code

- `src/client.rs` — `MetronomeClient`: sets bearer token, base URL (`https://api.metronome.com`),
  user-agent. `with_base_url` overrides the host for proxies/testing.
- `src/lib.rs` — re-exports `MetronomeClient` and the `apis`/`models` modules.

### Feature Flags

15 per-tag features; `default = ["all", "native-tls"]`. TLS switchable between `native-tls` and
`rustls`. Models are not gated. The untagged `/v1/packages/list` op lives in `default_api`, folded
under the `packages` feature.

### Nullable Fields

`Option<Option<T>>` with `serde_with::double_option`: `None` omits, `Some(None)` sends null,
`Some(Some(v))` sends the value.

### Versioning

Content-hash based. `SPEC_HASH` holds the sha256 of `openapi.json`. When the live spec hash differs,
`scripts/bump-version.sh` bumps the patch version. CI (`update-spec.yml`) does this automatically.

## Editing Guidelines

- Never hand-edit generated files in `src/apis/` or `src/models/`. Fix bugs in `generate.sh`
  post-processing instead, then re-run `./generate.sh`.
- When adding a post-generation fix, add it to `generate.sh` AND `.github/workflows/update-spec.yml`.
- After any multi-file change, run `cargo check --all-features`.
