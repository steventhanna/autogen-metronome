# EditContractV2RequestUpdateCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit_id** | **uuid::Uuid** |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**access_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule.md)> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule.md)> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**product_id** | Option<**uuid::Uuid**> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**rate_type** | Option<**RateType**> | If provided, updates the commit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. (enum: LIST_RATE, list_rate, COMMIT_RATE, commit_rate) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


