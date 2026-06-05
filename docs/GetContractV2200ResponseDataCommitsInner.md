# GetContractV2200ResponseDataCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**contract** | Option<[**models::ArchiveAlertV1200ResponseData**](archiveAlert_v1_200_response_data.md)> |  | [optional]
**r#type** | **String** |  | 
**rate_type** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | If multiple credits or commits are applicable, the one with the lower priority will apply first. | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md) |  | 
**access_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerAccessSchedule**](getContract_v1_200_response_data_initial_commits_inner_access_schedule.md)> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerInvoiceSchedule**](getContract_v1_200_response_data_initial_commits_inner_invoice_schedule.md)> |  | [optional]
**invoice_contract** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerInvoiceContract**](getContract_v1_200_response_data_initial_commits_inner_invoice_contract.md)> |  | [optional]
**rolled_over_from** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerRolledOverFrom**](getContract_v1_200_response_data_initial_commits_inner_rolled_over_from.md)> |  | [optional]
**description** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**applicable_contract_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**ledger** | Option<[**Vec<models::GetContractV2200ResponseDataCommitsInnerLedgerInner>**](getContract_v2_200_response_data_commits_inner_ledger_inner.md)> | A list of ordered events that impact the balance of a commit. For example, an invoice deduction or a rollover. | [optional]
**balance** | Option<**f64**> | The current balance of the credit or commit. This balance reflects the amount of credit or commit that the customer has access to use at this moment - thus, expired and upcoming credit or commit segments contribute 0 to the balance. The balance will match the sum of all ledger entries with the exception of the case where the sum of negative manual ledger entries exceeds the positive amount remaining on the credit or commit - in that case, the balance will be 0. All manual ledger entries associated with active credit or commit segments are included in the balance, including future-dated manual ledger entries. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**archived_at** | Option<**String**> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](getContract_v1_200_response_data_initial_commits_inner_hierarchy_configuration.md)> |  | [optional]
**spend_tracker_attributes** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerSpendTrackerAttributes**](getContract_v1_200_response_data_initial_commits_inner_spend_tracker_attributes.md)> |  | [optional]
**created_at** | **String** | Timestamp of when the commit was created. - Recurring commits: latter of commit service period date and parent commit start date - Rollover commits: when the new contract started  | 
**recurring_commit_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The ID of the recurring commit that created this commit | [optional]
**subscription_config** | Option<[**models::GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfSubscriptionConfig**](getContract_v1_200_response_data_initial_recurring_commits_inner_allOf_subscription_config.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


