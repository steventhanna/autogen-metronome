# GetPackageV1200ResponseDataRecurringCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> |  | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md) |  | 
**access_amount** | [**models::GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfAccessAmount**](getContract_v1_200_response_data_initial_recurring_commits_inner_allOf_access_amount.md) |  | 
**description** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> | Will be passed down to the individual commits. This controls how much of an individual unexpired commit will roll over upon contract transition. Must be between 0 and 1. | [optional]
**priority** | **f64** |  | 
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Will be passed down to the individual commits | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Will be passed down to the individual commits | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**rate_type** | **String** | Whether the created commits will use the commit rate or list rate | 
**starting_at_offset** | [**models::CreatePackageV1RequestRecurringCommitsInnerAllOfStartingAtOffset**](createPackage_v1_request_recurring_commits_inner_allOf_starting_at_offset.md) |  | 
**duration** | Option<[**models::CreatePackageV1RequestRecurringCommitsInnerAllOfDuration**](createPackage_v1_request_recurring_commits_inner_allOf_duration.md)> |  | [optional]
**commit_duration** | [**models::GetPackageV1200ResponseDataRecurringCommitsInnerAllOfCommitDuration**](getPackage_v1_200_response_data_recurring_commits_inner_allOf_commit_duration.md) |  | 
**recurrence_frequency** | Option<**String**> | The frequency at which the recurring commits will be created.  If not provided: - The commits will be created on the usage invoice frequency. If provided: - The period defined in the duration will correspond to this frequency. - Commits will be created aligned with the recurring commit's starting_at rather than the usage invoice dates. | [optional]
**proration** | Option<**String**> | Determines whether the first and last commit will be prorated.  If not provided, the default is FIRST_AND_LAST (i.e. prorate both the first and last commits). | [optional]
**subscription_config** | Option<[**models::GetPackageV1200ResponseDataRecurringCommitsInnerAllOfSubscriptionConfig**](getPackage_v1_200_response_data_recurring_commits_inner_allOf_subscription_config.md)> |  | [optional]
**invoice_amount** | Option<[**models::GetPackageV1200ResponseDataRecurringCommitsInnerAllOfInvoiceAmount**](getPackage_v1_200_response_data_recurring_commits_inner_allOf_invoice_amount.md)> |  | [optional]
**proration_rounding** | Option<[**models::GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfProrationRounding**](getContract_v1_200_response_data_initial_recurring_commits_inner_allOf_proration_rounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


