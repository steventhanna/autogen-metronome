# UsageBatchQueryPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_ids** | Option<**Vec<uuid::Uuid>**> | A list of Metronome customer IDs to fetch usage for. If absent, usage for all customers will be returned. | [optional]
**billable_metrics** | Option<[**Vec<models::UsageBatchQueryPayloadBillableMetricsInner>**](UsageBatchQueryPayloadBillableMetricsInner.md)> | A list of billable metrics to fetch usage for. If absent, all billable metrics will be returned. | [optional]
**window_size** | **WindowSize** | A window_size of \"day\" or \"hour\" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of \"none\" will return a single usage aggregate for the entirety of the specified period. (enum: hour, day, none, HOUR, DAY, NONE, Hour, Day, None) | 
**starting_on** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | **chrono::DateTime<chrono::FixedOffset>** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


