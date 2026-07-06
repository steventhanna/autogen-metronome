# GetContractEditHistoryV2200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**add_overrides** | Option<[**Vec<models::GetContractV2200ResponseDataOverridesInner>**](GetContractV2200ResponseDataOverridesInner.md)> |  | [optional]
**add_pro_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](GetContractV1200ResponseDataInitialProfessionalServicesInner.md)> |  | [optional]
**add_reseller_royalties** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddResellerRoyaltiesInner>**](GetContractEditHistoryV2200ResponseDataInnerAddResellerRoyaltiesInner.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](GetContractV1200ResponseDataInitialDiscountsInner.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddScheduledChargesInner>**](GetContractEditHistoryV2200ResponseDataInnerAddScheduledChargesInner.md)> |  | [optional]
**add_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddCommitsInner>**](GetContractEditHistoryV2200ResponseDataInnerAddCommitsInner.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddCreditsInner>**](GetContractEditHistoryV2200ResponseDataInnerAddCreditsInner.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCommitsInner>**](GetContractV2200ResponseDataRecurringCommitsInner.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCreditsInner>**](GetContractV2200ResponseDataRecurringCreditsInner.md)> |  | [optional]
**add_usage_filters** | Option<[**Vec<models::CreateContractV1200ResponseDataContractUsageFilterInner>**](CreateContractV1200ResponseDataContractUsageFilterInner.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::GetContractV1200ResponseDataSubscriptionsInner>**](GetContractV1200ResponseDataSubscriptionsInner.md)> | List of subscriptions on the contract. | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**add_spend_threshold_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfiguration.md)> |  | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_discounts** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateDiscountsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateDiscountsInner.md)> |  | [optional]
**update_scheduled_charges** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInner.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInner.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateCreditsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateCreditsInner.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCommitsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCommitsInner.md)> |  | [optional]
**update_recurring_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCreditsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCreditsInner.md)> |  | [optional]
**update_contract_end_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**update_refund_invoices** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRefundInvoicesInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateRefundInvoicesInner.md)> |  | [optional]
**update_subscriptions** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInner>**](GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInner.md)> | Optional list of subscriptions to update. | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration.md)> |  | [optional]
**update_spend_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration.md)> |  | [optional]
**archive_commits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**archive_credits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**remove_overrides** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](ArchiveAlertV1200ResponseData.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


