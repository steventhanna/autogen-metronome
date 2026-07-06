# GetContractEditHistoryV2200ResponseDataInnerAddCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**r#type** | **Type** |  (enum: PREPAID, POSTPAID) | 
**rate_type** | Option<**RateType**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]
**name** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | If multiple credits or commits are applicable, the one with the lower priority will apply first. | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](GetContractV1200ResponseDataInitialCommitsInnerProduct.md) |  | 
**access_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerAccessSchedule**](GetContractV1200ResponseDataInitialCommitsInnerAccessSchedule.md)> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerAddCommitsInnerInvoiceSchedule**](GetContractEditHistoryV2200ResponseDataInnerAddCommitsInnerInvoiceSchedule.md)> |  | [optional]
**description** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> |  | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


