# EditContractPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose contract is being edited | 
**contract_id** | **uuid::Uuid** | ID of the contract being edited | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**add_commits** | Option<[**Vec<models::CommitInputV2>**](CommitInputV2.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::CreditInputV2>**](CreditInputV2.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::RecurringCommitInputV2>**](RecurringCommitInputV2.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::RecurringCreditInputV2>**](RecurringCreditInputV2.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::DiscountInputV2>**](DiscountInputV2.md)> |  | [optional]
**add_overrides** | Option<[**Vec<models::OverrideInputV2>**](OverrideInputV2.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::ScheduledChargeInputV2>**](ScheduledChargeInputV2.md)> |  | [optional]
**add_professional_services** | Option<[**Vec<models::ProServiceInput>**](ProServiceInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**add_reseller_royalties** | Option<[**Vec<models::ResellerRoyaltyOrUpdateInput>**](ResellerRoyaltyOrUpdateInput.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::SubscriptionInputV2>**](SubscriptionInputV2.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**add_spend_threshold_configuration** | Option<[**models::SpendThresholdConfigurationV2**](SpendThresholdConfigurationV2.md)> |  | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfigurationV2**](PrepaidBalanceThresholdConfigurationV2.md)> |  | [optional]
**add_billing_provider_configuration_update** | Option<[**models::BillingProviderConfigurationUpdate**](BillingProviderConfigurationUpdate.md)> |  | [optional]
**add_revenue_system_configuration_update** | Option<[**models::RevenueSystemConfigurationUpdate**](RevenueSystemConfigurationUpdate.md)> |  | [optional]
**add_spend_trackers** | Option<[**Vec<models::SpendTrackerInput>**](SpendTrackerInput.md)> | Spend trackers to add to this contract. Aliases must be unique within a contract. | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_scheduled_charges** | Option<[**Vec<models::UpdateScheduledChargeInput>**](UpdateScheduledChargeInput.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::UpdateCommitInput>**](UpdateCommitInput.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::UpdateCreditInput>**](UpdateCreditInput.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::UpdateRecurringCommitInput>**](UpdateRecurringCommitInput.md)> | Edits to these recurring commits will only affect commits whose access schedules has not started. Expired commits, and commits with an active access schedule will remain unchanged. | [optional]
**update_recurring_credits** | Option<[**Vec<models::UpdateRecurringCreditInput>**](UpdateRecurringCreditInput.md)> | Edits to these recurring credits will only affect credits whose access schedules has not started. Expired credits, and credits with an active access schedule will remain unchanged. | [optional]
**update_subscriptions** | Option<[**Vec<models::UpdateSubscriptionInput>**](UpdateSubscriptionInput.md)> | Optional list of subscriptions to update. | [optional]
**update_spend_threshold_configuration** | Option<[**models::UpdateSpendThresholdConfiguration**](UpdateSpendThresholdConfiguration.md)> |  | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::UpdatePrepaidBalanceThresholdConfiguration**](UpdatePrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**update_contract_end_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp indicating when the contract will end (exclusive). | [optional]
**update_net_payment_terms_days** | Option<**f64**> | Number of days after issuance of invoice after which the invoice is due (e.g. Net 30). | [optional]
**allow_contract_ending_before_finalized_invoice** | Option<**bool**> | If true, allows setting the contract end date earlier than the end_timestamp of existing finalized invoices. Finalized invoices will be unchanged; if you want to incorporate the new end date, you can void and regenerate finalized usage invoices. Defaults to true. | [optional]
**archive_commits** | Option<[**Vec<models::VoidInvoiceV1Request>**](VoidInvoiceV1Request.md)> | IDs of commits to archive | [optional]
**archive_credits** | Option<[**Vec<models::VoidInvoiceV1Request>**](VoidInvoiceV1Request.md)> | IDs of credits to archive | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::VoidInvoiceV1Request>**](VoidInvoiceV1Request.md)> | IDs of scheduled charges to archive | [optional]
**archive_spend_trackers** | Option<**Vec<String>**> | Aliases of spend trackers to archive. | [optional]
**remove_overrides** | Option<[**Vec<models::VoidInvoiceV1Request>**](VoidInvoiceV1Request.md)> | IDs of overrides to remove | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


