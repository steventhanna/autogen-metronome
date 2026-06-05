# GetContractV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**archived_at** | Option<**String**> | RFC 3339 timestamp indicating when the contract was archived. If not returned, the contract is not archived. | [optional]
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**package_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the package this contract was created from, if applicable. | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**initial** | [**models::GetContractV1200ResponseDataInitial**](getContract_v1_200_response_data_initial.md) |  | 
**current** | [**models::GetContractV1200ResponseDataInitial**](getContract_v1_200_response_data_initial.md) |  | 
**amendments** | [**Vec<models::GetContractV1200ResponseDataAmendmentsInner>**](getContract_v1_200_response_data_amendments_inner.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**customer_billing_provider_configuration** | Option<[**models::GetContractV1200ResponseDataCustomerBillingProviderConfiguration**](getContract_v1_200_response_data_customer_billing_provider_configuration.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](getContract_v1_200_response_data_subscriptions_inner.md)> | List of subscriptions on the contract. | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialSpendTrackersInner>**](getContract_v1_200_response_data_initial_spend_trackers_inner.md)> | Spend trackers attached to this contract. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


