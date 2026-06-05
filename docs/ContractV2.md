# ContractV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**package_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | (BETA) ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::CommitV2>**](CommitV2.md) |  | 
**credits** | Option<[**Vec<models::CreditV2>**](CreditV2.md)> |  | [optional]
**has_more** | Option<[**models::HasMore**](HasMore.md)> |  | [optional]
**overrides** | [**Vec<models::OverrideV2>**](OverrideV2.md) |  | 
**discounts** | Option<[**Vec<models::Discount>**](Discount.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::ProService>**](ProService.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::ScheduledCharge>**](ScheduledCharge.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**transitions** | [**Vec<models::ContractTransition>**](ContractTransition.md) |  | 
**reseller_royalties** | Option<[**Vec<models::ContractV2ResellerRoyaltiesInner>**](ContractV2_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**archived_at** | Option<**String**> |  | [optional]
**total_contract_value** | Option<**f64**> |  | [optional]
**usage_filter** | [**Vec<models::UsageFilterV2>**](UsageFilterV2.md) |  | 
**usage_statement_schedule** | [**models::UsageStatementSchedule**](UsageStatementSchedule.md) |  | 
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::ContractV2CustomerBillingProviderConfiguration**](ContractV2_customer_billing_provider_configuration.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommitV2>**](RecurringCommitV2.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCreditV2>**](RecurringCreditV2.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfigurationV2**](SpendThresholdConfigurationV2.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfigurationV2**](PrepaidBalanceThresholdConfigurationV2.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::SpendTracker>**](SpendTracker.md)> | Spend trackers attached to this contract. | [optional]
**subscriptions** | Option<[**Vec<models::SubscriptionV2>**](SubscriptionV2.md)> | List of subscriptions on the contract. | [optional]
**hierarchy_configuration** | Option<[**models::HierarchyConfigurationV2**](HierarchyConfigurationV2.md)> |  | [optional]
**priority** | Option<**f64**> | Priority of the contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


