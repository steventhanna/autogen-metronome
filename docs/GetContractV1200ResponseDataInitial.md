# GetContractV1200ResponseDataInitial

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](GetContractV1200ResponseDataInitialCommitsInner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](GetContractV1200ResponseDataInitialCreditsInner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCommitsInner>**](GetContractV1200ResponseDataInitialRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialRecurringCreditsInner>**](GetContractV1200ResponseDataInitialRecurringCreditsInner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](GetContractV1200ResponseDataInitialOverridesInner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](GetContractV1200ResponseDataInitialDiscountsInner.md)> | This field's availability is dependent on your client's | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](GetContractV1200ResponseDataInitialProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](GetContractV1200ResponseDataInitialScheduledChargesInner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**transitions** | [**Vec<models::GetContractV1200ResponseDataInitialTransitionsInner>**](GetContractV1200ResponseDataInitialTransitionsInner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV1200ResponseDataInitialResellerRoyaltiesInner>**](GetContractV1200ResponseDataInitialResellerRoyaltiesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**usage_filter** | Option<[**models::GetContractV1200ResponseDataInitialUsageFilter**](GetContractV1200ResponseDataInitialUsageFilter.md)> |  | [optional]
**usage_statement_schedule** | [**models::GetContractV1200ResponseDataInitialUsageStatementSchedule**](GetContractV1200ResponseDataInitialUsageStatementSchedule.md) |  | 
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](GetContractV1200ResponseDataInitialSpendTrackersInner.md)> | Spend trackers attached to this contract. | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfiguration**](GetContractV1200ResponseDataInitialHierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


