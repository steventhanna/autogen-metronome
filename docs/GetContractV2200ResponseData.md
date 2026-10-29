# GetContractV2200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**package_id** | Option<**uuid::Uuid**> | (BETA) ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract creations. | [optional]
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**commits** | [**Vec<models::GetContractV2200ResponseDataCommitsInner>**](GetContractV2200ResponseDataCommitsInner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV2200ResponseDataCreditsInner>**](GetContractV2200ResponseDataCreditsInner.md)> |  | [optional]
**has_more** | Option<[**models::CreateContractV1200ResponseDataContractHasMore**](CreateContractV1200ResponseDataContractHasMore.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV2200ResponseDataOverridesInner>**](GetContractV2200ResponseDataOverridesInner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](GetContractV1200ResponseDataInitialDiscountsInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](GetContractV1200ResponseDataInitialProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](GetContractV1200ResponseDataInitialScheduledChargesInner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](GetContractV1200ResponseDataInitialTransitionsInner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV2200ResponseDataResellerRoyaltiesInner>**](GetContractV2200ResponseDataResellerRoyaltiesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**total_contract_value** | Option<**f64**> |  | [optional]
**usage_filter** | [**Vec<models::CreateContractV1200ResponseDataContractUsageFilterInner>**](CreateContractV1200ResponseDataContractUsageFilterInner.md) |  | 
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](GetContractV1200ResponseDataInitialUsageStatementSchedule.md) |  | 
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::GetCustomerBillingProviderConfigurationsV1200ResponseDataInner**](GetCustomerBillingProviderConfigurationsV1200ResponseDataInner.md)> |  | [optional]
**billing_provider_configuration_schedule** | Option<[**Vec<models::GetContractV2200ResponseDataBillingProviderConfigurationScheduleInner>**](GetContractV2200ResponseDataBillingProviderConfigurationScheduleInner.md)> | The schedule of billing provider configuration changes on the contract, ordered by effective_at ascending. | [optional]
**revenue_system_configuration_schedule** | Option<[**Vec<models::GetContractV2200ResponseDataRevenueSystemConfigurationScheduleInner>**](GetContractV2200ResponseDataRevenueSystemConfigurationScheduleInner.md)> | The schedule of revenue system configuration changes on the contract, ordered by effective_at ascending. | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCommitsInner>**](GetContractV2200ResponseDataRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCreditsInner>**](GetContractV2200ResponseDataRecurringCreditsInner.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration**](GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](GetContractV1200ResponseDataInitialSpendTrackersInner.md)> | Spend trackers attached to this contract. | [optional]
**subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](GetContractV1200ResponseDataSubscriptionsInner.md)> | List of subscriptions on the contract. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfiguration**](GetContractV1200ResponseDataInitialHierarchyConfiguration.md)> |  | [optional]
**priority** | Option<**f64**> | Priority of the contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


