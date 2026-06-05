# CreateHistoricalContractUsageInvoicesV1RequestInvoicesInnerUsageLineItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**inclusive_start_date** | **String** |  | 
**exclusive_end_date** | **String** |  | 
**quantity** | Option<**f64**> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**subtotals_with_quantity** | Option<[**Vec<models::CreateHistoricalContractUsageInvoicesV1RequestInvoicesInnerUsageLineItemsInnerSubtotalsWithQuantityInner>**](createHistoricalContractUsageInvoices_v1_request_invoices_inner_usage_line_items_inner_subtotals_with_quantity_inner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


