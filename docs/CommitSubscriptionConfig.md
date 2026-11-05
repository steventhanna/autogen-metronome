# CommitSubscriptionConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription_id** | Option<**uuid::Uuid**> |  | [optional]
**allocation** | Option<[**models::SubscriptionConfigAllocation**](SubscriptionConfigAllocation.md)> |  | [optional]
**apply_seat_increase_config** | Option<[**models::ApplySeatIncreaseConfigForRecurringCommit**](ApplySeatIncreaseConfigForRecurringCommit.md)> |  | [optional]
**access_policy** | Option<**AccessPolicy**> | Controls when a customer can access this commit when the attached subscription is payment-gated. `BILLING_PERIOD_PAID` releases the commit after payment for its billing period. `INITIAL_BILLING_PERIOD_PAID_ONLY` releases the commit after the first payment. (enum: BILLING_PERIOD_PAID, INITIAL_BILLING_PERIOD_PAID_ONLY) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


