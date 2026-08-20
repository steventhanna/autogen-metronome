# RecurringCommitSubscriptionConfigInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allocation** | Option<[**models::SubscriptionConfigAllocationInput**](SubscriptionConfigAllocationInput.md)> |  | [optional]
**apply_seat_increase_config** | [**models::ApplySeatIncreaseConfigForRecurringCommit**](ApplySeatIncreaseConfigForRecurringCommit.md) |  | 
**subscription_id** | **String** | ID of the subscription to configure on the recurring commit/credit. | 
**access_policy** | Option<**AccessPolicy**> | Controls when a customer can access recurring commit or credit child balances when the subscription is payment-gated. `BILLING_PERIOD_PAID` releases each balance after payment for its billing period. `INITIAL_BILLING_PERIOD_PAID_ONLY` releases all balances after the first payment. (enum: BILLING_PERIOD_PAID, INITIAL_BILLING_PERIOD_PAID_ONLY) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


