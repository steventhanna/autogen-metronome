# CreateContractV1200ResponseDataContract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**name** | Option<**String**> |  | [optional]
**package_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract creations. | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. | [optional]
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](getContract_v1_200_response_data_initial_usage_statement_schedule.md) |  | 
**usage_filter** | [**Vec<models::CreateContractV1200ResponseDataContractUsageFilterInner>**](createContract_v1_200_response_data_contract_usage_filter_inner.md) |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](getContract_v1_200_response_data_initial_commits_inner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](getContract_v1_200_response_data_initial_credits_inner.md)> |  | [optional]
**has_more** | Option<[**models::CreateContractV1200ResponseDataContractHasMore**](createContract_v1_200_response_data_contract_has_more.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCommitsInner>**](getContract_v1_200_response_data_initial_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCreditsInner>**](getContract_v1_200_response_data_initial_recurring_credits_inner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](getContract_v1_200_response_data_initial_overrides_inner.md) |  | 
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](getContract_v1_200_response_data_initial_scheduled_charges_inner.md) |  | 
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](getContract_v1_200_response_data_initial_transitions_inner.md) |  | 
**subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](getContract_v1_200_response_data_subscriptions_inner.md)> | List of subscriptions on the contract. | [optional]
**customer_billing_provider_configuration** | Option<[**models::CreateContractV1200ResponseDataContractCustomerBillingProviderConfiguration**](createContract_v1_200_response_data_contract_customer_billing_provider_configuration.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfiguration**](getContract_v1_200_response_data_initial_hierarchy_configuration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


