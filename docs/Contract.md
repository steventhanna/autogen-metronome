# Contract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp indicating when the contract was archived. If not returned, the contract is not archived. | [optional]
**customer_id** | **uuid::Uuid** |  | 
**package_id** | Option<**uuid::Uuid**> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**initial** | [**models::ContractWithoutAmendments**](ContractWithoutAmendments.md) |  | 
**current** | [**models::ContractWithoutAmendments**](ContractWithoutAmendments.md) |  | 
**amendments** | [**Vec<models::ContractAmendment>**](ContractAmendment.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::CustomerBillingProviderConfiguration**](CustomerBillingProviderConfiguration.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<[**models::ScheduledChargesOnUsageInvoices**](ScheduledChargesOnUsageInvoices.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::Subscription>**](Subscription.md)> | List of subscriptions on the contract. | [optional]
**spend_threshold_configuration** | Option<[**models::SpendThresholdConfiguration**](SpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::PrepaidBalanceThresholdConfiguration**](PrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::ContractWithoutAmendmentsSpendTrackersInner>**](ContractWithoutAmendmentsSpendTrackersInner.md)> | Spend trackers attached to this contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


