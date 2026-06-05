# GetPackageV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**name** | Option<**String**> |  | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](getRateCard_v1_200_response_data_aliases_inner.md)> |  | [optional]
**duration** | Option<[**models::CreatePackageV1RequestDuration**](createPackage_v1_request_duration.md)> |  | [optional]
**commits** | [**Vec<models::GetPackageV1200ResponseDataCommitsInner>**](getPackage_v1_200_response_data_commits_inner.md) |  | 
**credits** | Option<[**Vec<models::GetPackageV1200ResponseDataCreditsInner>**](getPackage_v1_200_response_data_credits_inner.md)> |  | [optional]
**overrides** | [**Vec<models::GetPackageV1200ResponseDataOverridesInner>**](getPackage_v1_200_response_data_overrides_inner.md) |  | 
**scheduled_charges** | [**Vec<models::GetPackageV1200ResponseDataScheduledChargesInner>**](getPackage_v1_200_response_data_scheduled_charges_inner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**usage_statement_schedule** | [**models::GetPackageV1200ResponseDataUsageStatementSchedule**](getPackage_v1_200_response_data_usage_statement_schedule.md) |  | 
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. | [optional]
**billing_provider** | Option<**String**> |  | [optional]
**delivery_method** | Option<**String**> |  | [optional]
**recurring_commits** | Option<[**Vec<models::GetPackageV1200ResponseDataRecurringCommitsInner>**](getPackage_v1_200_response_data_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetPackageV1200ResponseDataRecurringCreditsInner>**](getPackage_v1_200_response_data_recurring_credits_inner.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::GetPackageV1200ResponseDataSpendTrackersInner>**](getPackage_v1_200_response_data_spend_trackers_inner.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::GetPackageV1200ResponseDataSubscriptionsInner>**](getPackage_v1_200_response_data_subscriptions_inner.md)> |  | [optional]
**contract_name** | Option<**String**> | The name to use for contracts created from this package. | [optional]
**archived_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


