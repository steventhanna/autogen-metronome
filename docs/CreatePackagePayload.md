# CreatePackagePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**contract_name** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**rate_card_alias** | Option<**String**> | Selects the rate card linked to the specified alias as of the contract's start date. | [optional]
**aliases** | Option<[**Vec<models::PackageAlias>**](PackageAlias.md)> | Reference this alias when creating a contract. If the same alias is assigned to multiple packages, it will reference the package to which it was most recently assigned. It is not exposed to end customers. | [optional]
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**commits** | Option<[**Vec<models::CommitTemplateInput>**](CommitTemplateInput.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreditTemplateInput>**](CreditTemplateInput.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommitTemplateInput>**](RecurringCommitTemplateInput.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCreditTemplateInput>**](RecurringCreditTemplateInput.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**overrides** | Option<[**Vec<models::OverrideTemplateInput>**](OverrideTemplateInput.md)> |  | [optional]
**scheduled_charges** | Option<[**Vec<models::ScheduledChargeTemplateInput>**](ScheduledChargeTemplateInput.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**usage_statement_schedule** | Option<[**models::UsageStatementScheduleTemplateInput**](UsageStatementScheduleTemplateInput.md)> |  | [optional]
**billing_provider** | Option<[**models::ContractsBillingProviderType**](ContractsBillingProviderType.md)> |  | [optional]
**delivery_method** | Option<[**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::SpendTrackerInput>**](SpendTrackerInput.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::SubscriptionTemplateInput>**](SubscriptionTemplateInput.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


