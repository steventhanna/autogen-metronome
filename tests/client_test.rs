use autogen_metronome::MetronomeClient;

#[test]
fn test_production_client_has_correct_base_path() {
    let client = MetronomeClient::new("test-token");
    assert_eq!(client.config().base_path, "https://api.metronome.com");
}

#[test]
fn test_client_sets_bearer_token() {
    let client = MetronomeClient::new("my-secret-token");
    assert_eq!(
        client.config().bearer_access_token,
        Some("my-secret-token".to_string())
    );
}

#[test]
fn test_with_base_url_overrides_base_path() {
    let client = MetronomeClient::with_base_url("tok", "http://localhost:8080");
    assert_eq!(client.config().base_path, "http://localhost:8080");
}

#[test]
fn test_user_agent_is_set() {
    let client = MetronomeClient::new("tok");
    assert!(client
        .config()
        .user_agent
        .as_deref()
        .unwrap_or_default()
        .starts_with("autogen-metronome/"));
}
