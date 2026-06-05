# autogen-metronome

[![CI](https://github.com/steventhanna/autogen-metronome/actions/workflows/ci.yml/badge.svg)](https://github.com/steventhanna/autogen-metronome/actions/workflows/ci.yml)
[![crates.io](https://img.shields.io/crates/v/autogen-metronome.svg)](https://crates.io/crates/autogen-metronome)
[![docs.rs](https://img.shields.io/docsrs/autogen-metronome)](https://docs.rs/autogen-metronome)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](#license)

Auto-generated, strongly-typed, async Rust client for the [Metronome API](https://docs.metronome.com/).

Every request/response type and API method is generated directly from Metronome's official
[OpenAPI spec](https://api.metronome.com/v1/docs/openapi) with
[openapi-generator](https://openapi-generator.tech/), so the surface stays faithful to the API and
updates automatically when the spec changes. A thin hand-written `MetronomeClient` adds bearer auth
on top.

- **Complete** — all 15 API groups (customers, contracts, invoices, credits & commits, usage,
  rate cards, alerts, …), ~640 strongly-typed models.
- **Async** — built on [`reqwest`](https://docs.rs/reqwest); works on any Tokio runtime.
- **Modular** — every API group is a Cargo feature, so you compile only what you use.
- **Faithful nullability** — distinguishes "omitted", "null", and "value" via `Option<Option<T>>`.
- **No magic** — generated code is committed; no build scripts, no proc-macros, no codegen at build time.

## Installation

```toml
[dependencies]
autogen-metronome = "0.1"
tokio = { version = "1", features = ["macros", "rt-multi-thread"] }
```

Compile only the API groups you need (faster builds):

```toml
[dependencies]
autogen-metronome = { version = "0.1", default-features = false, features = ["customers", "contracts", "native-tls"] }
```

> **Note:** with `default-features = false` you must enable a TLS backend — either `native-tls`
> or `rustls` — or HTTPS requests will fail at runtime.

## Quick Start

```rust,no_run
use autogen_metronome::MetronomeClient;
use autogen_metronome::apis::customers_api;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let client = MetronomeClient::new("your-api-token");

    // List customers (limit, next_page, ingest_alias, customer_ids, only_archived, salesforce_account_ids)
    let page = customers_api::list_customers_v1(
        client.config(),
        Some(10),
        None,
        None,
        None,
        None,
        None,
    )
    .await?;

    for customer in &page.data {
        println!("{} — {}", customer.id, customer.name);
    }
    Ok(())
}
```

Every generated function takes `client.config()` as its first argument. Method names follow the
spec's operation IDs (e.g. `list_customers_v1`, `get_customer_v1`, `create_customer_v1`), and live
in the module for their API group (`apis::customers_api`, `apis::contracts_api`, …).

## Authentication

Metronome has a single production environment and authenticates with an HTTP bearer token:

```rust
use autogen_metronome::MetronomeClient;

// Production (https://api.metronome.com)
let client = MetronomeClient::new("your-api-token");

// Point at a proxy, mock server, or test double
let client = MetronomeClient::with_base_url("your-api-token", "http://localhost:8080");
```

`client.config()` returns the underlying `Configuration`, which you pass to every generated API
function.

## Paginating

List endpoints return a `next_page` cursor. Pass it back via the `next_page` argument until it's
`None`:

```rust,no_run
use autogen_metronome::MetronomeClient;
use autogen_metronome::apis::customers_api;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let client = MetronomeClient::new("your-api-token");
    let mut cursor: Option<String> = None;

    loop {
        let page = customers_api::list_customers_v1(
            client.config(),
            Some(100),
            cursor.as_deref(),
            None, None, None, None,
        )
        .await?;

        for customer in &page.data {
            println!("{}", customer.id);
        }

        match page.next_page {
            Some(next) => cursor = Some(next),
            None => break,
        }
    }
    Ok(())
}
```

## Error Handling

Generated functions return `Result<T, apis::Error<E>>`, where `E` is the endpoint-specific error
enum. `Error` distinguishes transport errors, (de)serialization errors, and structured API error
responses:

```rust,no_run
use autogen_metronome::MetronomeClient;
use autogen_metronome::apis::{customers_api, Error};

#[tokio::main]
async fn main() {
    let client = MetronomeClient::new("your-api-token");

    match customers_api::get_customer_v1(client.config(), "does-not-exist").await {
        Ok(resp) => println!("{}", resp.data.id),
        Err(Error::ResponseError(e)) => eprintln!("API returned HTTP {}: {}", e.status, e.content),
        Err(Error::Reqwest(e)) => eprintln!("transport error: {e}"),
        Err(e) => eprintln!("other error: {e}"),
    }
}
```

## Feature Flags

All 15 API groups are enabled by default. Use `default-features = false` and pick what you need:

| Feature | API group |
|---------|-----------|
| `alerts` | Alerts |
| `billable-metrics` | Billable metrics |
| `contracts` | Contracts |
| `credits-and-commits` | Credits and commits |
| `custom-fields` | Custom fields |
| `customers` | Customers |
| `invoices` | Invoices |
| `named-schedules` | Named schedules |
| `notifications` | Notifications |
| `packages` | Packages |
| `products` | Products |
| `rate-cards` | Rate cards |
| `security` | Security |
| `settings` | Settings |
| `usage` | Usage |

**TLS backends** (one required): `native-tls` (default) or `rustls`.

Models are not feature-gated — they cross-reference too heavily to split cleanly — so only the
API method modules are gated. Selecting a subset still compiles the full model set, but skips
compiling the unused endpoint code.

## Nullable Fields

Metronome marks many fields as both optional *and* nullable. This crate preserves all three states
with `Option<Option<T>>` (via [`serde_with`](https://docs.rs/serde_with)'s `double_option`):

```rust,ignore
field: None          // omitted from the JSON entirely
field: Some(None)    // sent as explicit null
field: Some(Some(v)) // sent with a value
```

This matters for `PATCH`-style updates, where omitting a field and setting it to `null` mean
different things.

## How It's Generated

```bash
# Requires: brew install openapi-generator
./generate.sh
```

`generate.sh` fetches the latest spec from
`https://api.metronome.com/v1/docs/openapi`, records its SHA-256 in `SPEC_HASH`, runs
openapi-generator (rust + reqwest template), applies any post-processing fixes for known
spec/generator bugs (currently none are needed — Metronome's spec generates cleanly), re-applies the
per-group `#[cfg(feature = …)]` gates, and verifies compilation. The run is idempotent: a fresh
generation reproduces the committed tree exactly.

Only four files are hand-written and protected from regeneration via `.openapi-generator-ignore`:
`Cargo.toml`, `src/lib.rs`, `src/client.rs`, plus `README.md` and `CLAUDE.md`. Everything under
`src/apis/` and `src/models/` is generated — **do not edit it by hand**; fix the spec or
`generate.sh` post-processing instead.

### Staying in sync with the spec

The crate version is content-hash based, starting at `0.1.0`. A scheduled GitHub Action
(`update-spec.yml`) checks the live spec twice a week; when its hash changes it regenerates, bumps
the patch version, and opens a PR. Merging that PR tags a release.

## Why auto-generated?

Hand-written SDKs drift from the API and accumulate subtle type mismatches. Generating from the
spec keeps the client honest:

- **Always current** — a spec change becomes a PR, not a manually-tracked changelog entry.
- **Correct nullability** — fields are omitted, null, or set, exactly as the API expects.
- **Exhaustive** — every endpoint and model is present, not just the popular ones.
- **Auditable** — generated code is committed and reviewable; there's no build-time codegen to trust.

## License

MIT
