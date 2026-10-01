# CreateContractV1RequestPackageCustomizations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modify_subscriptions** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsModifySubscriptionsInner>**](CreateContractV1RequestPackageCustomizationsModifySubscriptionsInner.md)> | Per-subscription overrides for the subscriptions defined on the package template. Each entry targets one template subscription and sets its starting quantity or seats. | [optional]
**add_overrides** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddOverridesInner>**](CreateContractV1RequestPackageCustomizationsAddOverridesInner.md)> | Rate overrides layered onto the contract on top of the package's baseline configuration. Same shape as create_contract's overrides. | [optional]
**add_commits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddCommitsInner>**](CreateContractV1RequestPackageCustomizationsAddCommitsInner.md)> | Commits added to the contract on top of the package's baseline configuration. Same shape as create_contract's commits. | [optional]
**add_credits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddCreditsInner>**](CreateContractV1RequestPackageCustomizationsAddCreditsInner.md)> | Credits added to the contract on top of the package's baseline configuration. Same shape as create_contract's credits. | [optional]
**add_recurring_commits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddRecurringCommitsInner>**](CreateContractV1RequestPackageCustomizationsAddRecurringCommitsInner.md)> | Recurring commits added to the contract on top of the package's baseline configuration. Same shape as create_contract's recurring_commits. | [optional]
**add_recurring_credits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddRecurringCreditsInner>**](CreateContractV1RequestPackageCustomizationsAddRecurringCreditsInner.md)> | Recurring credits added to the contract on top of the package's baseline configuration. Same shape as create_contract's recurring_credits. | [optional]
**add_scheduled_charges** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddScheduledChargesInner>**](CreateContractV1RequestPackageCustomizationsAddScheduledChargesInner.md)> | Scheduled charges added to the contract on top of the package's baseline configuration. Same shape as create_contract's scheduled_charges. | [optional]
**add_spend_trackers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner>**](CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner.md)> | Spend trackers added to the contract on top of the package's baseline configuration. Same shape as create_contract's spend_trackers; aliases must be unique within a contract. | [optional]
**add_subscriptions** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner>**](CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner.md)> | New subscriptions added to the contract on top of the package's baseline configuration. Distinct from modify_subscriptions, which adjusts subscriptions defined on the package template. Same shape as create_contract's subscriptions. | [optional]
**set_spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**set_prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


