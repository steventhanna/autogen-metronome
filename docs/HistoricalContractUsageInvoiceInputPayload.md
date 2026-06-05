# HistoricalContractUsageInvoiceInputPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**credit_type_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**inclusive_start_date** | **String** |  | 
**exclusive_end_date** | **String** |  | 
**issue_date** | **String** |  | 
**breakdown_granularity** | Option<**String**> |  | [optional]
**usage_line_items** | [**Vec<models::HistoricalContractUsageInvoiceLineItemInput>**](HistoricalContractUsageInvoiceLineItemInput.md) |  | 
**billable_status** | Option<[**models::BillableStatus**](BillableStatus.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


