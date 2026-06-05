# GetContractV2200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**package_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | (BETA) ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract creations. | [optional]
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::GetContractV2200ResponseDataCommitsInner>**](getContract_v2_200_response_data_commits_inner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV2200ResponseDataCreditsInner>**](getContract_v2_200_response_data_credits_inner.md)> |  | [optional]
**has_more** | Option<[**models::CreateContractV1200ResponseDataContractHasMore**](createContract_v1_200_response_data_contract_has_more.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV2200ResponseDataOverridesInner>**](getContract_v2_200_response_data_overrides_inner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](getContract_v1_200_response_data_initial_discounts_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](getContract_v1_200_response_data_initial_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](getContract_v1_200_response_data_initial_scheduled_charges_inner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](getContract_v1_200_response_data_initial_transitions_inner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV2200ResponseDataResellerRoyaltiesInner>**](getContract_v2_200_response_data_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**archived_at** | Option<**String**> |  | [optional]
**total_contract_value** | Option<**f64**> |  | [optional]
**usage_filter** | [**Vec<models::GetContractV2200ResponseDataUsageFilterInner>**](getContract_v2_200_response_data_usage_filter_inner.md) |  | 
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](getContract_v1_200_response_data_initial_usage_statement_schedule.md) |  | 
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::GetContractV2200ResponseDataCustomerBillingProviderConfiguration**](getContract_v2_200_response_data_customer_billing_provider_configuration.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCommitsInner>**](getContract_v2_200_response_data_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCreditsInner>**](getContract_v2_200_response_data_recurring_credits_inner.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataSpendThresholdConfiguration**](getContract_v2_200_response_data_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration**](getContract_v2_200_response_data_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](getContract_v1_200_response_data_initial_spend_trackers_inner.md)> | Spend trackers attached to this contract. | [optional]
**subscriptions** | Option<[**Vec<models::GetContractV2200ResponseDataSubscriptionsInner>**](getContract_v2_200_response_data_subscriptions_inner.md)> | List of subscriptions on the contract. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV2200ResponseDataHierarchyConfiguration**](getContract_v2_200_response_data_hierarchy_configuration.md)> |  | [optional]
**priority** | Option<**f64**> | Priority of the contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


