# EditContractV2RequestAddRecurringCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | displayed on invoices. will be passed through to the individual commits | [optional]
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**access_amount** | [**models::CreateContractV1RequestRecurringCommitsInnerAllOfAccessAmount**](createContract_v1_request_recurring_commits_inner_allOf_access_amount.md) |  | 
**description** | Option<**String**> | Will be passed down to the individual commits | [optional]
**rollover_fraction** | Option<**f64**> | Will be passed down to the individual commits. This controls how much of an individual unexpired commit will roll over upon contract transition. Must be between 0 and 1. | [optional]
**priority** | **f64** | Will be passed down to the individual commits | 
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Will be passed down to the individual commits | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Will be passed down to the individual commits | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfSpecifiersInner>**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration_commit_allOf_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**netsuite_sales_order_id** | Option<**String**> | Will be passed down to the individual commits | [optional]
**temporary_id** | Option<**String**> | A temporary ID that can be used to reference the recurring commit for commit specific overrides. | [optional]
**rate_type** | Option<**String**> | Whether the created commits will use the commit rate or list rate | [optional]
**starting_at** | **String** | determines the start time for the first commit | 
**ending_before** | Option<**String**> | Determines when the contract will stop creating recurring commits. optional | [optional]
**commit_duration** | [**models::CreateContractV1RequestRecurringCommitsInnerAllOfCommitDuration**](createContract_v1_request_recurring_commits_inner_allOf_commit_duration.md) |  | 
**recurrence_frequency** | Option<**String**> | The frequency at which the recurring commits will be created. If not provided: - The commits will be created on the usage invoice frequency. If provided: - The period defined in the duration will correspond to this frequency. - Commits will be created aligned with the recurring commit's starting_at rather than the usage invoice dates. | [optional]
**proration** | Option<**String**> | Determines whether the first and last commit will be prorated. If not provided, the default is FIRST_AND_LAST (i.e. prorate both the first and last commits). | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV2200ResponseDataRecurringCommitsInnerAllOfHierarchyConfiguration**](getContract_v2_200_response_data_recurring_commits_inner_allOf_hierarchy_configuration.md)> |  | [optional]
**subscription_config** | Option<[**models::EditContractV2RequestAddRecurringCommitsInnerAllOfSubscriptionConfig**](editContract_v2_request_add_recurring_commits_inner_allOf_subscription_config.md)> |  | [optional]
**proration_rounding** | Option<[**models::EditContractV2RequestAddRecurringCreditsInnerAllOfProrationRounding**](editContract_v2_request_add_recurring_credits_inner_allOf_proration_rounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


