# EditCommitPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose commit is being edited | 
**commit_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the commit to edit | 
**name** | Option<**String**> | Updated name for the commit | [optional]
**description** | Option<**String**> | Updated description for the commit | [optional]
**access_schedule** | Option<[**models::UpdateAccessScheduleInput**](UpdateAccessScheduleInput.md)> |  | [optional]
**invoice_schedule** | Option<[**models::UpdateInvoiceScheduleInput**](UpdateInvoiceScheduleInput.md)> |  | [optional]
**invoice_contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of contract to use for invoicing | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifierInput>**](CommitSpecifierInput.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**product_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**priority** | Option<**f64**> | If multiple commits are applicable, the one with the lower priority will apply first. | [optional]
**rate_type** | Option<**String**> | If provided, updates the commit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. | [optional]
**hierarchy_configuration** | Option<[**models::CommitHierarchyConfiguration**](CommitHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


