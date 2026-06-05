# PreviewEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_type** | **String** |  | 
**timestamp** | Option<**String**> | RFC 3339 formatted. If not provided, the current time will be used. | [optional]
**properties** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**transaction_id** | Option<**String**> | Optional unique identifier for event deduplication. When provided, preview events are automatically deduplicated against historical events from the past 34 days.  Duplicate transaction IDs within the same request will return an error.  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


