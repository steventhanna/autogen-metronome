# UpdateCreditInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credit_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**access_schedule** | Option<[**models::UpdateAccessScheduleInput**](UpdateAccessScheduleInput.md)> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> |  | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the credit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the credit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the credit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the credit applies to all products. | [optional]
**product_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**hierarchy_configuration** | Option<[**models::CommitHierarchyConfiguration**](CommitHierarchyConfiguration.md)> |  | [optional]
**rate_type** | Option<**String**> | If provided, updates the credit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


