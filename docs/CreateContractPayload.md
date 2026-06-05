# CreateContractPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**package_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | If provided, provisions a customer on a package instead of creating a traditional contract. When specified, only customer_id, starting_at, package_id, uniqueness_key, transition, and custom_fields are allowed. | [optional]
**package_alias** | Option<**String**> | Selects the package linked to the specified alias as of the contract's start date. Mutually exclusive with package_id. | [optional]
**name** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**rate_card_alias** | Option<**String**> | Selects the rate card linked to the specified alias as of the contract's start date. | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **String** | inclusive contract start time | 
**ending_before** | Option<**String**> | exclusive contract end time | [optional]
**commits** | Option<[**Vec<models::CommitInput>**](CommitInput.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreditInput>**](CreditInput.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommitInput>**](RecurringCommitInput.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCreditInput>**](RecurringCreditInput.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit. | [optional]
**overrides** | Option<[**Vec<models::OverrideInput>**](OverrideInput.md)> |  | [optional]
**discounts** | Option<[**Vec<models::DiscountInput>**](DiscountInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::ProServiceInput>**](ProServiceInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::ResellerRoyaltyInput>**](ResellerRoyaltyInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::ScheduledChargeInput>**](ScheduledChargeInput.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**transition** | Option<[**models::ContractTransitionInput**](ContractTransitionInput.md)> |  | [optional]
**usage_filter** | Option<[**models::BaseUsageFilter**](BaseUsageFilter.md)> |  | [optional]
**usage_statement_schedule** | Option<[**models::UsageStatementScheduleInput**](UsageStatementScheduleInput.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**billing_provider_configuration** | Option<[**models::CustomerBillingProviderConfigurationLookup**](CustomerBillingProviderConfigurationLookup.md)> |  | [optional]
**revenue_system_configuration** | Option<[**models::CustomerRevenueSystemConfigurationLookup**](CustomerRevenueSystemConfigurationLookup.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::SpendTrackerInput>**](SpendTrackerInput.md)> | Spend trackers to attach to this contract. Aliases must be unique within a contract. | [optional]
**subscriptions** | Option<[**Vec<models::SubscriptionInput>**](SubscriptionInput.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**hierarchy_configuration** | Option<[**models::ContractHierarchyConfigurationInput**](ContractHierarchyConfigurationInput.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


