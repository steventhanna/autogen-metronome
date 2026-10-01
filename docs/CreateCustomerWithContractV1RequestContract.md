# CreateCustomerWithContractV1RequestContract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**rate_card_alias** | Option<**String**> | Selects the rate card linked to the specified alias as of the contract's start date. | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | inclusive contract start time | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | exclusive contract end time | [optional]
**commits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddCommitsInner>**](CreateContractV1RequestPackageCustomizationsAddCommitsInner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddCreditsInner>**](CreateContractV1RequestPackageCustomizationsAddCreditsInner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddRecurringCommitsInner>**](CreateContractV1RequestPackageCustomizationsAddRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddRecurringCreditsInner>**](CreateContractV1RequestPackageCustomizationsAddRecurringCreditsInner.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**overrides** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddOverridesInner>**](CreateContractV1RequestPackageCustomizationsAddOverridesInner.md)> |  | [optional]
**discounts** | Option<[**Vec<models::CreateContractV1RequestDiscountsInner>**](CreateContractV1RequestDiscountsInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::CreateContractV1RequestResellerRoyaltiesInner>**](CreateContractV1RequestResellerRoyaltiesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](CreateContractV1RequestProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddScheduledChargesInner>**](CreateContractV1RequestPackageCustomizationsAddScheduledChargesInner.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**usage_filter** | Option<[**models::GetContractV1200ResponseDataInitialUsageFilterInitial**](GetContractV1200ResponseDataInitialUsageFilterInitial.md)> |  | [optional]
**usage_statement_schedule** | Option<[**models::CreateContractV1RequestUsageStatementSchedule**](CreateContractV1RequestUsageStatementSchedule.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**billing_provider_configuration** | Option<[**models::CreateCustomerWithContractV1RequestContractBillingProviderConfiguration**](CreateCustomerWithContractV1RequestContractBillingProviderConfiguration.md)> |  | [optional]
**revenue_system_configuration** | Option<[**models::CreateContractV1RequestRevenueSystemConfiguration**](CreateContractV1RequestRevenueSystemConfiguration.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner>**](CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner.md)> | Spend trackers to attach to this contract. Aliases must be unique within a contract. | [optional]
**subscriptions** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner>**](CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**hierarchy_configuration** | Option<[**models::CreateContractV1RequestHierarchyConfiguration**](CreateContractV1RequestHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


