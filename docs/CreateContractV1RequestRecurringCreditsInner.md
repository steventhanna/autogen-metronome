# CreateContractV1RequestRecurringCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | displayed on invoices. will be passed through to the individual commits | [optional]
**product_id** | **uuid::Uuid** |  | 
**access_amount** | [**models::CreateContractV1RequestRecurringCommitsInnerAllOfAccessAmount**](CreateContractV1RequestRecurringCommitsInnerAllOfAccessAmount.md) |  | 
**description** | Option<**String**> | Will be passed down to the individual commits | [optional]
**rollover_fraction** | Option<**f64**> | Will be passed down to the individual commits. This controls how much of an individual unexpired commit will roll over upon contract transition. Must be between 0 and 1. | [optional]
**priority** | **f64** | Will be passed down to the individual commits | 
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Will be passed down to the individual commits | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Will be passed down to the individual commits | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. | [optional]
**netsuite_sales_order_id** | Option<**String**> | Will be passed down to the individual commits | [optional]
**temporary_id** | Option<**String**> | A temporary ID that can be used to reference the recurring commit for commit specific overrides. | [optional]
**rate_type** | Option<**RateType**> | Whether the created commits will use the commit rate or list rate (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | determines the start time for the first commit | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Determines when the contract will stop creating recurring commits. optional | [optional]
**commit_duration** | [**models::GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfCommitDuration**](GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfCommitDuration.md) |  | 
**recurrence_frequency** | Option<**RecurrenceFrequency**> | The frequency at which the recurring commits will be created. If not provided: - The commits will be created on the usage invoice frequency. If provided: - The period defined in the duration will correspond to this frequency. - Commits will be created aligned with the recurring commit's starting_at rather than the usage invoice dates. - Daily recurring commits have a limit of one per contract, and are unable to be created with seat-based subscriptions (enum: MONTHLY, monthly, QUARTERLY, quarterly, ANNUAL, annual, WEEKLY, weekly, DAILY, daily) | [optional]
**proration** | Option<**Proration**> | Determines whether the first and last commit will be prorated.  If not provided, the default is FIRST_AND_LAST (i.e. prorate both the first and last commits). (enum: NONE, none, FIRST, first, LAST, last, FIRST_AND_LAST, first_and_last) | [optional]
**subscription_config** | Option<[**models::CreateContractV1RequestRecurringCommitsInnerAllOfSubscriptionConfig**](CreateContractV1RequestRecurringCommitsInnerAllOfSubscriptionConfig.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]
**proration_rounding** | Option<[**models::CreateContractV1RequestRecurringCreditsInnerAllOfProrationRounding**](CreateContractV1RequestRecurringCreditsInnerAllOfProrationRounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


