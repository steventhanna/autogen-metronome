# CreatePackageV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**contract_name** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**rate_card_id** | Option<**uuid::Uuid**> |  | [optional]
**rate_card_alias** | Option<**String**> | Selects the rate card linked to the specified alias as of the contract's start date. | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](GetRateCardV1200ResponseDataAliasesInner.md)> | Reference this alias when creating a contract. If the same alias is assigned to multiple packages, it will reference the package to which it was most recently assigned. It is not exposed to end customers. | [optional]
**duration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfDuration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfDuration.md)> |  | [optional]
**commits** | Option<[**Vec<models::CreatePackageV1RequestCommitsInner>**](CreatePackageV1RequestCommitsInner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreatePackageV1RequestCreditsInner>**](CreatePackageV1RequestCreditsInner.md)> |  | [optional]
**recurring_commits** | Option<[**Vec<models::CreatePackageV1RequestRecurringCommitsInner>**](CreatePackageV1RequestRecurringCommitsInner.md)> |  | [optional]
**recurring_credits** | Option<[**Vec<models::CreatePackageV1RequestRecurringCreditsInner>**](CreatePackageV1RequestRecurringCreditsInner.md)> |  | [optional]
**multiplier_override_prioritization** | Option<**MultiplierOverridePrioritization**> | Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit. (enum: LOWEST_MULTIPLIER, lowest_multiplier, EXPLICIT, explicit) | [optional]
**overrides** | Option<[**Vec<models::CreatePackageV1RequestOverridesInner>**](CreatePackageV1RequestOverridesInner.md)> |  | [optional]
**scheduled_charges** | Option<[**Vec<models::CreatePackageV1RequestScheduledChargesInner>**](CreatePackageV1RequestScheduledChargesInner.md)> |  | [optional]
**scheduled_charges_on_usage_invoices** | Option<**ScheduledChargesOnUsageInvoices**> | Determines which scheduled and commit charges to consolidate onto the Contract's usage invoice. The charge's `timestamp` must match the usage invoice's `ending_before` date for consolidation to occur. This field cannot be modified after a Contract has been created. If this field is omitted, charges will appear on a separate invoice from usage charges. (enum: ALL) | [optional]
**usage_statement_schedule** | Option<[**models::CreatePackageV1RequestUsageStatementSchedule**](CreatePackageV1RequestUsageStatementSchedule.md)> |  | [optional]
**billing_provider** | Option<**BillingProvider**> |  (enum: aws_marketplace, azure_marketplace, gcp_marketplace, stripe, netsuite) | [optional]
**delivery_method** | Option<**DeliveryMethod**> |  (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]
**spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**spend_trackers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner>**](CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner.md)> |  | [optional]
**subscriptions** | Option<[**Vec<models::CreatePackageV1RequestSubscriptionsInner>**](CreatePackageV1RequestSubscriptionsInner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


