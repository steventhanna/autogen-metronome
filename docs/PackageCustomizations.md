# PackageCustomizations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modify_subscriptions** | Option<[**Vec<models::PackageSubscriptionCustomization>**](PackageSubscriptionCustomization.md)> | Per-subscription overrides for the subscriptions defined on the package template. Each entry targets one template subscription and sets its starting quantity or seats. | [optional]
**add_overrides** | Option<[**Vec<models::OverrideInput>**](OverrideInput.md)> | Rate overrides layered onto the contract on top of the package's baseline configuration. Same shape as create_contract's overrides. | [optional]
**add_commits** | Option<[**Vec<models::CommitInput>**](CommitInput.md)> | Commits added to the contract on top of the package's baseline configuration. Same shape as create_contract's commits. | [optional]
**add_credits** | Option<[**Vec<models::CreditInput>**](CreditInput.md)> | Credits added to the contract on top of the package's baseline configuration. Same shape as create_contract's credits. | [optional]
**add_recurring_commits** | Option<[**Vec<models::RecurringCommitInput>**](RecurringCommitInput.md)> | Recurring commits added to the contract on top of the package's baseline configuration. Same shape as create_contract's recurring_commits. | [optional]
**add_recurring_credits** | Option<[**Vec<models::RecurringCreditInput>**](RecurringCreditInput.md)> | Recurring credits added to the contract on top of the package's baseline configuration. Same shape as create_contract's recurring_credits. | [optional]
**add_scheduled_charges** | Option<[**Vec<models::ScheduledChargeInput>**](ScheduledChargeInput.md)> | Scheduled charges added to the contract on top of the package's baseline configuration. Same shape as create_contract's scheduled_charges. | [optional]
**add_spend_trackers** | Option<[**Vec<models::SpendTrackerInput>**](SpendTrackerInput.md)> | Spend trackers added to the contract on top of the package's baseline configuration. Same shape as create_contract's spend_trackers; aliases must be unique within a contract. | [optional]
**add_subscriptions** | Option<[**Vec<models::SubscriptionInput>**](SubscriptionInput.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


