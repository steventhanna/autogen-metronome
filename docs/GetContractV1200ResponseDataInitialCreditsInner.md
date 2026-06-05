# GetContractV1200ResponseDataInitialCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**contract** | Option<[**models::ArchiveAlertV1200ResponseData**](archiveAlert_v1_200_response_data.md)> |  | [optional]
**r#type** | **String** |  | 
**name** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | If multiple credits or commits are applicable, the one with the lower priority will apply first. | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md) |  | 
**access_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCreditsInnerAccessSchedule**](getContract_v1_200_response_data_initial_credits_inner_access_schedule.md)> |  | [optional]
**description** | Option<**String**> |  | [optional]
**recurring_credit_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The ID of the recurring credit that this credit was generated from, if applicable. | [optional]
**subscription_config** | Option<[**models::GetContractV1200ResponseDataInitialCreditsInnerSubscriptionConfig**](getContract_v1_200_response_data_initial_credits_inner_subscription_config.md)> |  | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**applicable_contract_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**ledger** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInnerLedgerInner>**](getContract_v1_200_response_data_initial_credits_inner_ledger_inner.md)> | A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration. | [optional]
**balance** | Option<**f64**> | The current balance of the credit or commit. This balance reflects the amount of credit or commit that the customer has access to use at this moment - thus, expired and upcoming credit or commit segments contribute 0 to the balance. The balance will match the sum of all ledger entries with the exception of the case where the sum of negative manual ledger entries exceeds the positive amount remaining on the credit or commit - in that case, the balance will be 0. All manual ledger entries associated with active credit or commit segments are included in the balance, including future-dated manual ledger entries. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**rate_type** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a commit or credit is made with a uniqueness key that was previously used to create a commit or credit, a new record will not be created and the request will fail with a 409 error. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCreditsInnerHierarchyConfiguration**](getContract_v1_200_response_data_initial_credits_inner_hierarchy_configuration.md)> |  | [optional]
**rolled_over_from** | Option<[**models::GetContractV1200ResponseDataInitialCreditsInnerRolledOverFrom**](getContract_v1_200_response_data_initial_credits_inner_rolled_over_from.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


