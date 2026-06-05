# EventTypeFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**in_values** | Option<**Vec<String>**> | A list of event types that are explicitly included in the billable metric. If specified, only events of these types will match the billable metric. Must be non-empty if present. | [optional]
**not_in_values** | Option<**Vec<String>**> | A list of event types that are explicitly excluded from the billable metric. If specified, events of these types will not match the billable metric. Must be non-empty if present. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


