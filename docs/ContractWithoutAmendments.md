# ContractWithoutAmendments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::Commit>**](Commit.md) |  | 
**credits** | Option<[**Vec<models::Credit>**](Credit.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::RecurringCommit>**](RecurringCommit.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::RecurringCredit>**](RecurringCredit.md)> |  | [optional]
**overrides** | [**Vec<models::Override>**](Override.md) |  | 
**discounts** | Option<[**Vec<models::Discount>**](Discount.md)> | This field's availability is dependent on your client's | [optional]
**professional_services** | Option<[**Vec<models::ProService>**](ProService.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::ScheduledCharge>**](ScheduledCharge.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**transitions** | [**Vec<models::ContractTransition>**](ContractTransition.md) |  | 
**reseller_royalties** | Option<[**Vec<models::ResellerRoyalty>**](ResellerRoyalty.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**usage_filter** | Option<[**models::UsageFilter**](UsageFilter.md)> |  | [optional]
**usage_statement_schedule** | [**models::UsageStatementSchedule**](UsageStatementSchedule.md) |  | 
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::ContractWithoutAmendmentsSpendTrackersInner>**](ContractWithoutAmendments_spend_trackers_inner.md)> | Spend trackers attached to this contract. | [optional]
**hierarchy_configuration** | Option<[**models::HierarchyConfiguration**](HierarchyConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


