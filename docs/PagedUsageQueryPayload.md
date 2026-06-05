# PagedUsageQueryPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**billable_metric_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**window_size** | **String** | A window_size of \"day\" or \"hour\" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of \"none\" will return a single usage aggregate for the entirety of the specified period. | 
**starting_on** | Option<**String**> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**group_by** | Option<[**models::PagedUsageQueryPayloadGroupBy**](PagedUsageQueryPayload_group_by.md)> |  | [optional]
**group_key** | Option<**Vec<String>**> | Group key to group usage by. Supports both simple (single key) and compound (multiple keys) group keys.  For simple group keys, provide a single key e.g. `[\"region\"]`. For compound group keys, provide multiple keys e.g. `[\"region\", \"team\"]`.  For streaming metrics, the keys must be defined as a simple or compound group key on the billable metric. For compound group keys, all keys must match an exact compound group key definition — partial matches are not allowed.  Cannot be used together with `group_by`.  | [optional]
**group_filters** | Option<[**std::collections::HashMap<String, Vec<String>>**](Vec.md)> | Object mapping group keys to arrays of values to filter on. Only usage matching these filter values will be returned. Keys must be present in group_key. Omit a key or use an empty array to include all values for that dimension.  | [optional]
**current_period** | Option<**bool**> | If true, will return the usage for the current billing period. Will return an error if the customer is currently uncontracted or starting_on and ending_before are specified when this is true. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


