# CreateContractV1200ResponseDataContract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**name** | Option<**String**> |  | [optional]
**package_id** | Option<**uuid::Uuid**> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract creations. | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](GetContractV1200ResponseDataInitialUsageStatementSchedule.md) |  | 
**usage_filter** | [**Vec<models::CreateContractV1200ResponseDataContractUsageFilterInner>**](CreateContractV1200ResponseDataContractUsageFilterInner.md) |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](GetContractV1200ResponseDataInitialCommitsInner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](GetContractV1200ResponseDataInitialCreditsInner.md)> |  | [optional]
**has_more** | Option<[**models::CreateContractV1200ResponseDataContractHasMore**](CreateContractV1200ResponseDataContractHasMore.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCommitsInner>**](GetContractV1200ResponseDataInitialRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCreditsInner>**](GetContractV1200ResponseDataInitialRecurringCreditsInner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](GetContractV1200ResponseDataInitialOverridesInner.md) |  | 
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](GetContractV1200ResponseDataInitialScheduledChargesInner.md) |  | 
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](GetContractV1200ResponseDataInitialTransitionsInner.md) |  | 
**subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](GetContractV1200ResponseDataSubscriptionsInner.md)> | List of subscriptions on the contract. | [optional]
**customer_billing_provider_configuration** | Option<[**models::GetCustomerBillingProviderConfigurationsV1200ResponseDataInner**](GetCustomerBillingProviderConfigurationsV1200ResponseDataInner.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfiguration**](GetContractV1200ResponseDataInitialHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


