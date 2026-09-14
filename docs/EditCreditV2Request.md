# EditCreditV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose credit is being edited | 
**credit_id** | **uuid::Uuid** | ID of the credit to edit | 
**name** | Option<**String**> | Updated name for the credit | [optional]
**description** | Option<**String**> | Updated description for the credit | [optional]
**access_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule.md)> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products. | [optional]
**applicable_contract_ids** | Option<**Vec<uuid::Uuid>**> | Which contracts the customer-level credit applies to. If set to null, the credit applies to all of the customer's contracts. This field cannot be set on a contract-level credit. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**product_id** | Option<**uuid::Uuid**> |  | [optional]
**priority** | Option<**f64**> | If multiple commits are applicable, the one with the lower priority will apply first. | [optional]
**rate_type** | Option<**RateType**> | If provided, updates the credit to use the specified rate type for current and future invoices. Previously finalized invoices will need to be voided and regenerated to reflect the rate type change. (enum: LIST_RATE, list_rate, COMMIT_RATE, commit_rate) | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


