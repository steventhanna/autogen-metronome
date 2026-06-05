//! # autogen-metronome
//!
//! Auto-generated, strongly-typed, async Rust client for the
//! [Metronome API](https://docs.metronome.com/).
//!
//! Every request/response type and API method is generated from Metronome's official
//! [OpenAPI spec](https://api.metronome.com/v1/docs/openapi) with
//! [openapi-generator](https://openapi-generator.tech/). A thin hand-written [`MetronomeClient`]
//! adds bearer authentication on top of the generated [`Configuration`](apis::configuration::Configuration).
//!
//! ## Crate layout
//!
//! - [`MetronomeClient`] — the entry point; wires up auth and the base URL.
//! - [`apis`] — one module per API group (e.g. [`apis::customers_api`], [`apis::contracts_api`]).
//!   Every function takes `client.config()` as its first argument.
//! - [`models`] — the ~640 generated request and response types.
//! - [`apis::Error`] — the error type returned by every API call.
//!
//! ## Quick Start
//!
//! ```no_run
//! use autogen_metronome::MetronomeClient;
//! use autogen_metronome::apis::customers_api;
//!
//! # #[cfg(feature = "customers")]
//! #[tokio::main]
//! async fn main() -> Result<(), Box<dyn std::error::Error>> {
//!     let client = MetronomeClient::new("your-api-token");
//!
//!     let page = customers_api::list_customers_v1(
//!         client.config(),
//!         Some(10), // limit
//!         None, None, None, None, None,
//!     )
//!     .await?;
//!
//!     for customer in &page.data {
//!         println!("{} — {}", customer.id, customer.name);
//!     }
//!     Ok(())
//! }
//! # #[cfg(not(feature = "customers"))]
//! # fn main() {}
//! ```
//!
//! ## Authentication
//!
//! Metronome has a single production environment and authenticates with an HTTP bearer token:
//!
//! ```no_run
//! use autogen_metronome::MetronomeClient;
//!
//! // Production (https://api.metronome.com)
//! let client = MetronomeClient::new("your-api-token");
//!
//! // Point at a proxy, mock server, or test double
//! let client = MetronomeClient::with_base_url("your-api-token", "http://localhost:8080");
//! ```
//!
//! ## Error handling
//!
//! Calls return `Result<T, apis::Error<E>>`, where `E` is the endpoint-specific error enum.
//! [`apis::Error`] separates transport errors ([`Reqwest`](apis::Error::Reqwest)),
//! (de)serialization errors ([`Serde`](apis::Error::Serde)), and structured API error responses
//! ([`ResponseError`](apis::Error::ResponseError), which carries the HTTP status and body).
//!
//! ## Nullable fields
//!
//! Metronome marks many fields as both optional and nullable. This crate preserves all three states
//! with `Option<Option<T>>` (via [`serde_with`](https://docs.rs/serde_with)'s `double_option`):
//! `None` omits the field, `Some(None)` sends explicit `null`, and `Some(Some(v))` sends a value.
//!
//! ## Feature flags
//!
//! By default all 15 API groups are enabled. To reduce compile time, select only what you need
//! (and a TLS backend — `native-tls` or `rustls`):
//!
//! ```toml
//! [dependencies]
//! autogen-metronome = { version = "0.1", default-features = false, features = ["customers", "native-tls"] }
//! ```

#![allow(unused_imports)]
#![allow(clippy::too_many_arguments)]

pub mod apis;
pub mod models;
pub mod client;

pub use client::MetronomeClient;
