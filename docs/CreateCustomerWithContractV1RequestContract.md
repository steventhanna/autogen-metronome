# CreateCustomerWithContractV1RequestContract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
**commits** | Option<[**Vec<models::CreateContractV1RequestCommitsInner>**](createContract_v1_request_commits_inner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreateContractV1RequestCreditsInner>**](createContract_v1_request_credits_inner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::CreateContractV1RequestRecurringCommitsInner>**](createContract_v1_request_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::CreateContractV1RequestRecurringCreditsInner>**](createContract_v1_request_recurring_credits_inner.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. | [optional]
**overrides** | Option<[**Vec<models::CreateContractV1RequestOverridesInner>**](createContract_v1_request_overrides_inner.md)> |  | [optional]
**discounts** | Option<[**Vec<models::CreateContractV1RequestDiscountsInner>**](createContract_v1_request_discounts_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::CreateContractV1RequestResellerRoyaltiesInner>**](createContract_v1_request_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](createContract_v1_request_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::CreateContractV1RequestScheduledChargesInner>**](createContract_v1_request_scheduled_charges_inner.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**usage_filter** | Option<[**models::GetContractV1200ResponseDataInitialUsageFilterInitial**](getContract_v1_200_response_data_initial_usage_filter_initial.md)> |  | [optional]
**usage_statement_schedule** | Option<[**models::CreateContractV1RequestUsageStatementSchedule**](createContract_v1_request_usage_statement_schedule.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**billing_provider_configuration** | Option<[**models::CreateCustomerWithContractV1RequestContractBillingProviderConfiguration**](createCustomerWithContract_v1_request_contract_billing_provider_configuration.md)> |  | [optional]
**revenue_system_configuration** | Option<[**models::CreateContractV1RequestRevenueSystemConfiguration**](createContract_v1_request_revenue_system_configuration.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::CreateContractV1RequestSpendTrackersInner>**](createContract_v1_request_spend_trackers_inner.md)> | Spend trackers to attach to this contract. Aliases must be unique within a contract. | [optional]
**subscriptions** | Option<[**Vec<models::CreateContractV1RequestSubscriptionsInner>**](createContract_v1_request_subscriptions_inner.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**hierarchy_configuration** | Option<[**models::CreateContractV1RequestHierarchyConfiguration**](createContract_v1_request_hierarchy_configuration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


