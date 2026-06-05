# CreateContractV1RequestCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | **String** |  | 
**rate_type** | Option<**String**> |  | [optional]
**name** | Option<**String**> | displayed on invoices | [optional]
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**access_schedule** | Option<[**models::CreateContractV1RequestCommitsInnerAccessSchedule**](createContract_v1_request_commits_inner_access_schedule.md)> |  | [optional]
**invoice_schedule** | Option<[**models::CreateContractV1RequestCommitsInnerInvoiceSchedule**](createContract_v1_request_commits_inner_invoice_schedule.md)> |  | [optional]
**amount** | Option<**f64**> | (DEPRECATED) Use access_schedule and invoice_schedule instead. | [optional]
**description** | Option<**String**> | Used only in UI/API. It is not exposed to end customers. | [optional]
**rollover_fraction** | Option<**f64**> | Fraction of unused segments that will be rolled over. Must be between 0 and 1. | [optional]
**priority** | Option<**f64**> | If multiple commits are applicable, the one with the lower priority will apply first. | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfSpecifiersInner>**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration_commit_allOf_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**temporary_id** | Option<**String**> | A temporary ID for the commit that can be used to reference the commit for commit specific overrides. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](getContract_v1_200_response_data_initial_commits_inner_hierarchy_configuration.md)> |  | [optional]
**spend_tracker_attributes** | Option<[**models::CreateContractV1RequestCommitsInnerSpendTrackerAttributes**](createContract_v1_request_commits_inner_spend_tracker_attributes.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


