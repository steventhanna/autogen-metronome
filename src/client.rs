use crate::apis::configuration::Configuration;

const PRODUCTION_URL: &str = "https://api.metronome.com";

/// Thin wrapper over the generated [`Configuration`] that sets up bearer auth.
///
/// Metronome has a single production environment and authenticates with an HTTP
/// bearer token, so this wrapper just wires the token, base URL, and user-agent.
#[derive(Debug, Clone)]
pub struct MetronomeClient {
    configuration: Configuration,
}

impl MetronomeClient {
    /// Create a client for the production Metronome API.
    pub fn new(token: &str) -> Self {
        Self::with_base_url(token, PRODUCTION_URL)
    }

    /// Create a client pointed at a custom base URL (proxies, testing, mock servers).
    pub fn with_base_url(token: &str, base_url: &str) -> Self {
        let mut configuration = Configuration::new();
        configuration.base_path = base_url.to_string();
        configuration.bearer_access_token = Some(token.to_string());
        configuration.user_agent = Some(format!("autogen-metronome/{}", env!("CARGO_PKG_VERSION")));
        Self { configuration }
    }

    /// Access the underlying configuration for use with generated API functions.
    pub fn config(&self) -> &Configuration {
        &self.configuration
    }
}
