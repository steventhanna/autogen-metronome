# GetUsageBatchV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**billable_metric_id** | **uuid::Uuid** |  | 
**billable_metric_name** | **String** |  | 
**start_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**end_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**value** | Option<**f64**> |  | 
**groups** | Option<**std::collections::HashMap<String, f64>**> | Values will be either a number or null. Null indicates that there were no matches for the group_by value. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


