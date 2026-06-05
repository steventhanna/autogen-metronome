# CreatePackageV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**contract_name** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**rate_card_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**rate_card_alias** | Option<**String**> | Selects the rate card linked to the specified alias as of the contract's start date. | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](getRateCard_v1_200_response_data_aliases_inner.md)> | Reference this alias when creating a contract. If the same alias is assigned to multiple packages, it will reference the package to which it was most recently assigned. It is not exposed to end customers. | [optional]
**duration** | Option<[**models::CreatePackageV1RequestDuration**](createPackage_v1_request_duration.md)> |  | [optional]
**commits** | Option<[**Vec<models::CreatePackageV1RequestCommitsInner>**](createPackage_v1_request_commits_inner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreatePackageV1RequestCreditsInner>**](createPackage_v1_request_credits_inner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::CreatePackageV1RequestRecurringCommitsInner>**](createPackage_v1_request_recurring_commits_inner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::CreatePackageV1RequestRecurringCreditsInner>**](createPackage_v1_request_recurring_credits_inner.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**String**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit. | [optional]
**overrides** | Option<[**Vec<models::CreatePackageV1RequestOverridesInner>**](createPackage_v1_request_overrides_inner.md)> |  | [optional]
**scheduled_charges** | Option<[**Vec<models::CreatePackageV1RequestScheduledChargesInner>**](createPackage_v1_request_scheduled_charges_inner.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**String**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. | [optional]
**usage_statement_schedule** | Option<[**models::CreatePackageV1RequestUsageStatementSchedule**](createPackage_v1_request_usage_statement_schedule.md)> |  | [optional]
**billing_provider** | Option<**String**> |  | [optional]
**delivery_method** | Option<**String**> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](getContract_v1_200_response_data_initial_spend_threshold_configuration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::CreateContractV1RequestSpendTrackersInner>**](createContract_v1_request_spend_trackers_inner.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::CreatePackageV1RequestSubscriptionsInner>**](createPackage_v1_request_subscriptions_inner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


