# Package

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**name** | Option<**String**> |  | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**aliases** | Option<[**Vec<models::PackageAlias>**](PackageAlias.md)> |  | [optional]
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**commits** | [**Vec<models::CommitTemplate>**](CommitTemplate.md) |  | 
**credits** | Option<[**Vec<models::CreditTemplate>**](CreditTemplate.md)> |  | [optional]
**overrides** | [**Vec<models::OverrideTemplate>**](OverrideTemplate.md) |  | 
**scheduled_charges** | [**Vec<models::ScheduledChargeTemplate>**](ScheduledChargeTemplate.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**usage_statement_schedule** | [**models::UsageStatementScheduleTemplate**](UsageStatementScheduleTemplate.md) |  | 
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, EXPLICIT) | [optional]
**billing_provider** | Option<[**models::BillingProviderType**](BillingProviderType.md)> |  | [optional]
**delivery_method** | Option<[**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommitTemplate>**](RecurringCommitTemplate.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCreditTemplate>**](RecurringCreditTemplate.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::SpendTrackerTemplate>**](SpendTrackerTemplate.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::SubscriptionTemplate>**](SubscriptionTemplate.md)> |  | [optional]
**contract_name** | Option<**String**> | The name to use for contracts created from this package. | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


