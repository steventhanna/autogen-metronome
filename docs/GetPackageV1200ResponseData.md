# GetPackageV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**name** | Option<**String**> |  | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](GetRateCardV1200ResponseDataAliasesInner.md)> |  | [optional]
**duration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfDuration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfDuration.md)> |  | [optional]
**commits** | [**Vec<models::GetPackageV1200ResponseDataCommitsInner>**](GetPackageV1200ResponseDataCommitsInner.md) |  | 
**credits** | Option<[**Vec<models::GetPackageV1200ResponseDataCreditsInner>**](GetPackageV1200ResponseDataCreditsInner.md)> |  | [optional]
**overrides** | [**Vec<models::GetPackageV1200ResponseDataOverridesInner>**](GetPackageV1200ResponseDataOverridesInner.md) |  | 
**scheduled_charges** | [**Vec<models::GetPackageV1200ResponseDataScheduledChargesInner>**](GetPackageV1200ResponseDataScheduledChargesInner.md) |  | 
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**usage_statement_schedule** | [**models::GetPackageV1200ResponseDataUsageStatementSchedule**](GetPackageV1200ResponseDataUsageStatementSchedule.md) |  | 
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. (enum: LOWEST_MULTIPLIER, EXPLICIT) | [optional]
**billing_provider** | Option<**BillingProvider**> |  (enum: aws_marketplace, stripe, netsuite, custom, azure_marketplace, quickbooks_online, workday, gcp_marketplace, metronome) | [optional]
**delivery_method** | Option<**DeliveryMethod**> |  (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]
**recurring_commits** | Option<[**Vec<models::GetPackageV1200ResponseDataRecurringCommitsInner>**](GetPackageV1200ResponseDataRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::GetPackageV1200ResponseDataRecurringCreditsInner>**](GetPackageV1200ResponseDataRecurringCreditsInner.md)> |  | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner>**](CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::GetPackageV1200ResponseDataSubscriptionsInner>**](GetPackageV1200ResponseDataSubscriptionsInner.md)> |  | [optional]
**contract_name** | Option<**String**> | The name to use for contracts created from this package. | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


