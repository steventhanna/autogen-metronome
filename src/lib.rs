//! # autogen-metronome
//!
//! Auto-generated, strongly-typed Rust client for the [Metronome API](https://docs.metronome.com/).
//!
//! ## Quick Start
//!
//! ```no_run
//! use autogen_metronome::MetronomeClient;
//!
//! #[tokio::main]
//! async fn main() {
//!     let client = MetronomeClient::new("your-api-token");
//!     // Use client.config() with generated API functions
//! }
//! ```
//!
//! ## Feature Flags
//!
//! By default all API groups are enabled. To reduce compile time, select only what you need:
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
