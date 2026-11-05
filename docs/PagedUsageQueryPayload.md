# PagedUsageQueryPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**billable_metric_id** | **uuid::Uuid** |  | 
**window_size** | **WindowSize** | A window_size of \"day\" or \"hour\" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of \"none\" will return a single usage aggregate for the entirety of the specified period. (enum: hour, day, none, HOUR, DAY, NONE, Hour, Day, None) | 
**starting_on** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Must be aligned to UTC midnight, e.g. `2024-01-01T00:00:00Z`. | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Must be aligned to UTC midnight and at least one day after `starting_on`. | [optional]
**group_by** | Option<[**models::PagedUsageQueryPayloadGroupBy**](PagedUsageQueryPayloadGroupBy.md)> |  | [optional]
**group_key** | Option<**Vec<String>**> | Group key to group usage by. Supports both simple (single key) and compound (multiple keys) group keys.  For simple group keys, provide a single key e.g. `[\"region\"]`. For compound group keys, provide multiple keys e.g. `[\"region\", \"team\"]`.  For streaming metrics, the keys must be defined as a simple or compound group key on the billable metric. For compound group keys, all keys must match an exact compound group key definition — partial matches are not allowed.  Cannot be used together with `group_by`.  | [optional]
**group_filters** | Option<[**std::collections::HashMap<String, Vec<String>>**](Vec.md)> | Object mapping group keys to arrays of values to filter on. Only usage matching these filter values will be returned. Keys must be present in group_key. Omit a key or use an empty array to include all values for that dimension. The combined number of entries across all value arrays may not exceed 200.  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


