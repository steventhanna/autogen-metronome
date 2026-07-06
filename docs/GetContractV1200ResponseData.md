# GetContractV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp indicating when the contract was archived. If not returned, the contract is not archived. | [optional]
**customer_id** | **uuid::Uuid** |  | 
**package_id** | Option<**uuid::Uuid**> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**initial** | [**models::GetContractV1200ResponseDataInitial**](GetContractV1200ResponseDataInitial.md) |  | 
**current** | [**models::GetContractV1200ResponseDataInitial**](GetContractV1200ResponseDataInitial.md) |  | 
**amendments** | [**Vec<models::GetContractV1200ResponseDataAmendmentsInner>**](GetContractV1200ResponseDataAmendmentsInner.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::GetCustomerBillingProviderConfigurationsV1200ResponseDataInner**](GetCustomerBillingProviderConfigurationsV1200ResponseDataInner.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](GetContractV1200ResponseDataSubscriptionsInner.md)> | List of subscriptions on the contract. | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](GetContractV1200ResponseDataInitialSpendTrackersInner.md)> | Spend trackers attached to this contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


