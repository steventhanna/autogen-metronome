# RecurringCreditTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**name** | Option<**String**> |  | [optional]
**product** | [**models::SubscriptionRateProduct**](SubscriptionRateProduct.md) |  | 
**access_amount** | [**models::RecurringCommitOrCreditInputBaseAccessAmount**](RecurringCommitOrCreditInputBaseAccessAmount.md) |  | 
**description** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> | Will be passed down to the individual commits. This controls how much of an individual unexpired commit will roll over upon contract transition. Must be between 0 and 1. | [optional]
**priority** | **f64** |  | 
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Will be passed down to the individual commits | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Will be passed down to the individual commits | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifier>**](CommitSpecifier.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**rate_type** | **RateType** | Whether the created commits will use the commit rate or list rate (enum: COMMIT_RATE, LIST_RATE) | 
**starting_at_offset** | [**models::RelativeDate**](RelativeDate.md) |  | 
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**commit_duration** | [**models::RecurringCommitOrCreditTemplateBaseCommitDuration**](RecurringCommitOrCreditTemplateBaseCommitDuration.md) |  | 
**recurrence_frequency** | Option<**RecurrenceFrequency**> | The frequency at which the recurring commits will be created. If not provided: - The commits will be created on the usage invoice frequency. If provided: - The period defined in the duration will correspond to this frequency. - Commits will be created aligned with the recurring commit's starting_at rather than the usage invoice dates. (enum: MONTHLY, QUARTERLY, ANNUAL, WEEKLY, DAILY) | [optional]
**proration** | Option<**Proration**> | Determines whether the first and last commit will be prorated.  If not provided, the default is FIRST_AND_LAST (i.e. prorate both the first and last commits). (enum: NONE, FIRST, LAST, FIRST_AND_LAST) | [optional]
**subscription_config** | Option<[**models::RecurringCommitSubscriptionConfigTemplate**](RecurringCommitSubscriptionConfigTemplate.md)> |  | [optional]
**proration_rounding** | Option<[**models::RecurringCreditAllOfProrationRounding**](RecurringCreditAllOfProrationRounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


