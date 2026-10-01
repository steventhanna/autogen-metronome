# EditContractV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose contract is being edited | 
**contract_id** | **uuid::Uuid** | ID of the contract being edited | 
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract edits. | [optional]
**add_commits** | Option<[**Vec<models::EditContractV2RequestAddCommitsInner>**](EditContractV2RequestAddCommitsInner.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddCreditsInner>**](CreateContractV1RequestPackageCustomizationsAddCreditsInner.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::EditContractV2RequestAddRecurringCommitsInner>**](EditContractV2RequestAddRecurringCommitsInner.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::EditContractV2RequestAddRecurringCreditsInner>**](EditContractV2RequestAddRecurringCreditsInner.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::EditContractV2RequestAddDiscountsInner>**](EditContractV2RequestAddDiscountsInner.md)> |  | [optional]
**add_overrides** | Option<[**Vec<models::EditContractV2RequestAddOverridesInner>**](EditContractV2RequestAddOverridesInner.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::EditContractV2RequestAddScheduledChargesInner>**](EditContractV2RequestAddScheduledChargesInner.md)> |  | [optional]
**add_professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](CreateContractV1RequestProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**add_reseller_royalties** | Option<[**Vec<models::AmendContractV1RequestResellerRoyaltiesInner>**](AmendContractV1RequestResellerRoyaltiesInner.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner>**](CreateContractV1RequestPackageCustomizationsAddSubscriptionsInner.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**add_spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration**](GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**add_billing_provider_configuration_update** | Option<[**models::EditContractV2RequestAddBillingProviderConfigurationUpdate**](EditContractV2RequestAddBillingProviderConfigurationUpdate.md)> |  | [optional]
**add_revenue_system_configuration_update** | Option<[**models::EditContractV2RequestAddRevenueSystemConfigurationUpdate**](EditContractV2RequestAddRevenueSystemConfigurationUpdate.md)> |  | [optional]
**add_spend_trackers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner>**](CreateContractV1RequestPackageCustomizationsAddSpendTrackersInner.md)> | Spend trackers to add to this contract. Aliases must be unique within a contract. | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_scheduled_charges** | Option<[**Vec<models::EditContractV2RequestUpdateScheduledChargesInner>**](EditContractV2RequestUpdateScheduledChargesInner.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::EditContractV2RequestUpdateCommitsInner>**](EditContractV2RequestUpdateCommitsInner.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::EditContractV2RequestUpdateCreditsInner>**](EditContractV2RequestUpdateCreditsInner.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::EditContractV2RequestUpdateRecurringCommitsInner>**](EditContractV2RequestUpdateRecurringCommitsInner.md)> | Edits to these recurring commits will only affect commits whose access schedules has not started. Expired commits, and commits with an active access schedule will remain unchanged. | [optional]
**update_recurring_credits** | Option<[**Vec<models::EditContractV2RequestUpdateRecurringCreditsInner>**](EditContractV2RequestUpdateRecurringCreditsInner.md)> | Edits to these recurring credits will only affect credits whose access schedules has not started. Expired credits, and credits with an active access schedule will remain unchanged. | [optional]
**update_subscriptions** | Option<[**Vec<models::EditContractV2RequestUpdateSubscriptionsInner>**](EditContractV2RequestUpdateSubscriptionsInner.md)> | Optional list of subscriptions to update. | [optional]
**update_spend_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration.md)> |  | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**update_contract_end_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp indicating when the contract will end (exclusive). | [optional]
**update_net_payment_terms_days** | Option<**f64**> | Number of days after issuance of invoice after which the invoice is due (e.g. Net 30). | [optional]
**allow_contract_ending_before_finalized_invoice** | Option<**bool**> | If true, allows setting the contract end date earlier than the end_timestamp of existing finalized invoices. Finalized invoices will be unchanged; if you want to incorporate the new end date, you can void and regenerate finalized usage invoices. Defaults to true. | [optional]
**archive_commits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> | IDs of commits to archive | [optional]
**archive_credits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> | IDs of credits to archive | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> | IDs of scheduled charges to archive | [optional]
**archive_spend_trackers** | Option<**Vec<String>**> | Aliases of spend trackers to archive. | [optional]
**remove_overrides** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> | IDs of overrides to remove | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


