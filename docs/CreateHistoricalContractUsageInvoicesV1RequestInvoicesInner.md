# CreateHistoricalContractUsageInvoicesV1RequestInvoicesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**contract_id** | **uuid::Uuid** |  | 
**credit_type_id** | **uuid::Uuid** |  | 
**inclusive_start_date** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**exclusive_end_date** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**issue_date** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**breakdown_granularity** | Option<**BreakdownGranularity**> |  (enum: hour, day, HOUR, DAY, Hour, Day) | [optional]
**usage_line_items** | [**Vec<models::CreateHistoricalContractUsageInvoicesV1RequestInvoicesInnerUsageLineItemsInner>**](CreateHistoricalContractUsageInvoicesV1RequestInvoicesInnerUsageLineItemsInner.md) |  | 
**billable_status** | Option<**BillableStatus**> | This field's availability is dependent on your client's configuration. (enum: billable, unbillable) | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


