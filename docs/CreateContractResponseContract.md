# CreateContractResponseContract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**name** | Option<**String**> |  | [optional]
**package_id** | Option<**uuid::Uuid**> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**usage_statement_schedule** | [**models::UsageStatementSchedule**](UsageStatementSchedule.md) |  | 
**usage_filter** | [**Vec<models::CreateContractResponseContractUsageFilterInner>**](CreateContractResponseContractUsageFilterInner.md) |  | 
**commits** | [**Vec<models::Commit>**](Commit.md) |  | 
**credits** | Option<[**Vec<models::Credit>**](Credit.md)> |  | [optional]
**has_more** | Option<[**models::HasMore**](HasMore.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommit>**](RecurringCommit.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCredit>**](RecurringCredit.md)> |  | [optional]
**overrides** | [**Vec<models::Override>**](Override.md) |  | 
**scheduled_charges** | [**Vec<models::ScheduledCharge>**](ScheduledCharge.md) |  | 
**transitions** | [**Vec<models::ContractTransition>**](ContractTransition.md) |  | 
**subscriptions** | Option<[**Vec<models::Subscription>**](Subscription.md)> | List of subscriptions on the contract. | [optional]
**customer_billing_provider_configuration** | Option<[**models::CreateContractResponseContractCustomerBillingProviderConfiguration**](CreateContractResponseContractCustomerBillingProviderConfiguration.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::HierarchyConfiguration**](HierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


