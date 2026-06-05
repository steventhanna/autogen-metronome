# GetContractEditHistoryV2200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**timestamp** | Option<**String**> |  | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**add_overrides** | Option<[**Vec<models::GetContractV2200ResponseDataOverridesInner>**](getContract_v2_200_response_data_overrides_inner.md)> |  | [optional]
**add_pro_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](getContract_v1_200_response_data_initial_professional_services_inner.md)> |  | [optional]
**add_reseller_royalties** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddResellerRoyaltiesInner>**](getContractEditHistory_v2_200_response_data_inner_add_reseller_royalties_inner.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](getContract_v1_200_response_data_initial_discounts_inner.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddScheduledChargesInner>**](getContractEditHistory_v2_200_response_data_inner_add_scheduled_charges_inner.md)> |  | [optional]
**add_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddCommitsInner>**](getContractEditHistory_v2_200_response_data_inner_add_commits_inner.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerAddCreditsInner>**](getContractEditHistory_v2_200_response_data_inner_add_credits_inner.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCommitsInner>**](getContract_v2_200_response_data_recurring_commits_inner.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::GetContractV2200ResponseDataRecurringCreditsInner>**](getContract_v2_200_response_data_recurring_credits_inner.md)> |  | [optional]
**add_usage_filters** | Option<[**Vec<models::GetContractV2200ResponseDataUsageFilterInner>**](getContract_v2_200_response_data_usage_filter_inner.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::GetContractV2200ResponseDataSubscriptionsInner>**](getContract_v2_200_response_data_subscriptions_inner.md)> | List of subscriptions on the contract. | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration**](getContract_v2_200_response_data_prepaid_balance_threshold_configuration.md)> |  | [optional]
**add_spend_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataSpendThresholdConfiguration**](getContract_v2_200_response_data_spend_threshold_configuration.md)> |  | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_discounts** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateDiscountsInner>**](getContractEditHistory_v2_200_response_data_inner_update_discounts_inner.md)> |  | [optional]
**update_scheduled_charges** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateScheduledChargesInner>**](getContractEditHistory_v2_200_response_data_inner_update_scheduled_charges_inner.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateCommitsInner>**](getContractEditHistory_v2_200_response_data_inner_update_commits_inner.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateCreditsInner>**](getContractEditHistory_v2_200_response_data_inner_update_credits_inner.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCommitsInner>**](getContractEditHistory_v2_200_response_data_inner_update_recurring_commits_inner.md)> |  | [optional]
**update_recurring_credits** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCreditsInner>**](getContractEditHistory_v2_200_response_data_inner_update_recurring_credits_inner.md)> |  | [optional]
**update_contract_end_date** | Option<**String**> |  | [optional]
**update_refund_invoices** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateRefundInvoicesInner>**](getContractEditHistory_v2_200_response_data_inner_update_refund_invoices_inner.md)> |  | [optional]
**update_subscriptions** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInner>**](getContractEditHistory_v2_200_response_data_inner_update_subscriptions_inner.md)> | Optional list of subscriptions to update. | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration**](getContractEditHistory_v2_200_response_data_inner_update_prepaid_balance_threshold_configuration.md)> |  | [optional]
**update_spend_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration**](getContractEditHistory_v2_200_response_data_inner_update_spend_threshold_configuration.md)> |  | [optional]
**archive_commits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> |  | [optional]
**archive_credits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> |  | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> |  | [optional]
**remove_overrides** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


