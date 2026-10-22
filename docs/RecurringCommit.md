# RecurringCommit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**contract** | Option<[**models::VoidInvoiceV1Request**](VoidInvoiceV1Request.md)> |  | [optional]
**name** | Option<**String**> | Displayed on invoices. Will be passed through to the individual commits | [optional]
**product** | [**models::SubscriptionRateProduct**](SubscriptionRateProduct.md) |  | 
**access_amount** | [**models::RecurringCommitOrCreditBaseAccessAmount**](RecurringCommitOrCreditBaseAccessAmount.md) |  | 
**description** | Option<**String**> | Will be passed down to the individual commits | [optional]
**rollover_fraction** | Option<**f64**> | Will be passed down to the individual commits. This controls how much of an individual unexpired commit will roll over upon contract transition. Must be between 0 and 1. | [optional]
**priority** | **f64** | Will be passed down to the individual commits | 
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Will be passed down to the individual commits | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Will be passed down to the individual commits | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifier>**](CommitSpecifier.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**netsuite_sales_order_id** | Option<**String**> | Will be passed down to the individual commits | [optional]
**rate_type** | **RateType** | Whether the created commits will use the commit rate or list rate (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | 
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | Determines the start time for the first commit | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Determines when the contract will stop creating recurring commits. Optional | [optional]
**commit_duration** | [**models::RecurringCommitOrCreditInputBaseCommitDuration**](RecurringCommitOrCreditInputBaseCommitDuration.md) |  | 
**recurrence_frequency** | Option<**RecurrenceFrequency**> | The frequency at which the recurring commits will be created. If not provided: - The commits will be created on the usage invoice frequency. If provided: - The period defined in the duration will correspond to this frequency. - Commits will be created aligned with the recurring commit's starting_at rather than the usage invoice dates. - Daily recurring commits have a limit of one per contract, and are unable to be created with seat-based subscriptions (enum: MONTHLY, monthly, QUARTERLY, quarterly, ANNUAL, annual, WEEKLY, weekly, DAILY, daily) | [optional]
**anchor_date** | **chrono::DateTime<chrono::FixedOffset>** | The date this recurring commit's billing periods are anchored to. | 
**proration** | Option<**Proration**> | Determines whether the first and last commit will be prorated.  If not provided, the default is FIRST_AND_LAST (i.e. prorate both the first and last commits). (enum: NONE, none, FIRST, first, LAST, last, FIRST_AND_LAST, first_and_last) | [optional]
**subscription_config** | Option<[**models::RecurringCommitSubscriptionConfig**](RecurringCommitSubscriptionConfig.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::CommitHierarchyConfiguration**](CommitHierarchyConfiguration.md)> |  | [optional]
**invoice_amount** | Option<[**models::RecurringCommitInputAllOfInvoiceAmount**](RecurringCommitInputAllOfInvoiceAmount.md)> |  | [optional]
**proration_rounding** | Option<[**models::RecurringCommitAllOfProrationRounding**](RecurringCommitAllOfProrationRounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


