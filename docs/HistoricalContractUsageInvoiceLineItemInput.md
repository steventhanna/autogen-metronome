# HistoricalContractUsageInvoiceLineItemInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **uuid::Uuid** |  | 
**inclusive_start_date** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**exclusive_end_date** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**quantity** | Option<**f64**> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**subtotals_with_quantity** | Option<[**Vec<models::HistoricalContractUsageInvoiceLineItemBreakdownSubtotal>**](HistoricalContractUsageInvoiceLineItemBreakdownSubtotal.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


