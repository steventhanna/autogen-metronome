# EditContractV2RequestUpdateCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**access_schedule** | Option<[**models::EditContractV2RequestUpdateCommitsInnerAccessSchedule**](editContract_v2_request_update_commits_inner_access_schedule.md)> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule**](getContractEditHistory_v2_200_response_data_inner_update_scheduled_charges_inner_invoice_schedule.md)> |  | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**product_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](getContract_v1_200_response_data_initial_commits_inner_hierarchy_configuration.md)> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**rate_type** | Option<**String**> | If provided, updates the commit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


