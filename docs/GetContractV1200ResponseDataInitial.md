# GetContractV1200ResponseDataInitial

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](getContract_v1_200_response_data_initial_commits_inner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](getContract_v1_200_response_data_initial_credits_inner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCommitsInner>**](getContract_v1_200_response_data_initial_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCreditsInner>**](getContract_v1_200_response_data_initial_recurring_credits_inner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](getContract_v1_200_response_data_initial_overrides_inner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](getContract_v1_200_response_data_initial_discounts_inner.md)> | This field's availability is dependent on your client's | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](getContract_v1_200_response_data_initial_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](getContract_v1_200_response_data_initial_scheduled_charges_inner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](getContract_v1_200_response_data_initial_transitions_inner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV1200ResponseDataInitialResellerRoyaltiesInner>**](getContract_v1_200_response_data_initial_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**usage_filter** | Option<[**models::GetContractV1200ResponseDataInitialUsageFilter**](getContract_v1_200_response_data_initial_usage_filter.md)> |  | [optional]
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](getContract_v1_200_response_data_initial_usage_statement_schedule.md) |  | 
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](getContract_v1_200_response_data_initial_spend_trackers_inner.md)> | Spend trackers attached to this contract. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfiguration**](getContract_v1_200_response_data_initial_hierarchy_configuration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


