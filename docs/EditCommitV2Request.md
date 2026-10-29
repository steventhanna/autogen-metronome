# EditCommitV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose commit is being edited | 
**commit_id** | **uuid::Uuid** | ID of the commit to edit | 
**name** | Option<**String**> | Updated name for the commit | [optional]
**description** | Option<**String**> | Updated description for the commit | [optional]
**access_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule.md)> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule.md)> |  | [optional]
**invoice_contract_id** | Option<**uuid::Uuid**> | ID of contract to use for invoicing | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_contract_ids** | Option<**Vec<uuid::Uuid>**> | Which contracts the customer-level commit applies to. If set to null, the commit applies to all of the customer's contracts. This field cannot be edited for POSTPAID commits or contract-level commits. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**product_id** | Option<**uuid::Uuid**> |  | [optional]
**priority** | Option<**f64**> | If multiple commits are applicable, the one with the lower priority will apply first. | [optional]
**rate_type** | Option<**RateType**> | If provided, updates the commit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. (enum: LIST_RATE, list_rate, COMMIT_RATE, commit_rate) | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


