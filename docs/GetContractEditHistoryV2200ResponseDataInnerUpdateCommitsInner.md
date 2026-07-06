# GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**access_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInnerAccessSchedule.md)> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule**](GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInnerInvoiceSchedule.md)> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**product_id** | Option<**uuid::Uuid**> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]
**priority** | Option<**f64**> | If multiple commits are applicable, the one with the lower priority will apply first. | [optional]
**rate_type** | Option<**RateType**> | If set, the commit's rate type was updated to the specified value. (enum: COMMIT_RATE, LIST_RATE) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


