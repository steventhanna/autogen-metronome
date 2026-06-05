# ContractEdit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**timestamp** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**add_overrides** | Option<[**Vec<models::OverrideV2>**](OverrideV2.md)> |  | [optional]
**add_pro_services** | Option<[**Vec<models::ProService>**](ProService.md)> |  | [optional]
**add_reseller_royalties** | Option<[**Vec<models::ResellerRoyaltyOrUpdateV2>**](ResellerRoyaltyOrUpdateV2.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::Discount>**](Discount.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::ScheduledChargeAdd>**](ScheduledChargeAdd.md)> |  | [optional]
**add_commits** | Option<[**Vec<models::CommitAdd>**](CommitAdd.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::CreditAdd>**](CreditAdd.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::RecurringCommitV2>**](RecurringCommitV2.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::RecurringCreditV2>**](RecurringCreditV2.md)> |  | [optional]
**add_usage_filters** | Option<[**Vec<models::UsageFilterV2>**](UsageFilterV2.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::SubscriptionV2>**](SubscriptionV2.md)> | List of subscriptions on the contract. | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfigurationV2**](PrepaidBalanceThresholdConfigurationV2.md)> |  | [optional]
**add_spend_threshold_configuration** | Option<[**models::SpendThresholdConfigurationV2**](SpendThresholdConfigurationV2.md)> |  | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_discounts** | Option<[**Vec<models::DiscountUpdate>**](DiscountUpdate.md)> |  | [optional]
**update_scheduled_charges** | Option<[**Vec<models::ScheduledChargeUpdate>**](ScheduledChargeUpdate.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::CommitUpdate>**](CommitUpdate.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::CreditUpdate>**](CreditUpdate.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::RecurringCommitUpdate>**](RecurringCommitUpdate.md)> |  | [optional]
**update_recurring_credits** | Option<[**Vec<models::RecurringCreditUpdate>**](RecurringCreditUpdate.md)> |  | [optional]
**update_contract_end_date** | Option<**String**> |  | [optional]
**update_refund_invoices** | Option<[**Vec<models::RefundInvoiceUpdate>**](RefundInvoiceUpdate.md)> |  | [optional]
**update_subscriptions** | Option<[**Vec<models::SubscriptionsUpdate>**](SubscriptionsUpdate.md)> | Optional list of subscriptions to update. | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::UpdatePrepaidBalanceThresholdConfiguration**](UpdatePrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**update_spend_threshold_configuration** | Option<[**models::UpdateSpendThresholdConfiguration**](UpdateSpendThresholdConfiguration.md)> |  | [optional]
**archive_commits** | Option<[**Vec<models::VoidInvoiceV1200ResponseData>**](voidInvoice_v1_200_response_data.md)> |  | [optional]
**archive_credits** | Option<[**Vec<models::VoidInvoiceV1200ResponseData>**](voidInvoice_v1_200_response_data.md)> |  | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::VoidInvoiceV1200ResponseData>**](voidInvoice_v1_200_response_data.md)> |  | [optional]
**remove_overrides** | Option<[**Vec<models::VoidInvoiceV1200ResponseData>**](voidInvoice_v1_200_response_data.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


