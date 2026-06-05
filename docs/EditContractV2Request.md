# EditContractV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose contract is being edited | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract being edited | 
**uniqueness_key** | Option<**String**> | Optional uniqueness key to prevent duplicate contract edits. | [optional]
**add_commits** | Option<[**Vec<models::EditContractV2RequestAddCommitsInner>**](editContract_v2_request_add_commits_inner.md)> |  | [optional]
**add_credits** | Option<[**Vec<models::EditContractV2RequestAddCreditsInner>**](editContract_v2_request_add_credits_inner.md)> |  | [optional]
**add_recurring_commits** | Option<[**Vec<models::EditContractV2RequestAddRecurringCommitsInner>**](editContract_v2_request_add_recurring_commits_inner.md)> |  | [optional]
**add_recurring_credits** | Option<[**Vec<models::EditContractV2RequestAddRecurringCreditsInner>**](editContract_v2_request_add_recurring_credits_inner.md)> |  | [optional]
**add_discounts** | Option<[**Vec<models::EditContractV2RequestAddDiscountsInner>**](editContract_v2_request_add_discounts_inner.md)> |  | [optional]
**add_overrides** | Option<[**Vec<models::EditContractV2RequestAddOverridesInner>**](editContract_v2_request_add_overrides_inner.md)> |  | [optional]
**add_scheduled_charges** | Option<[**Vec<models::EditContractV2RequestAddScheduledChargesInner>**](editContract_v2_request_add_scheduled_charges_inner.md)> |  | [optional]
**add_professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](createContract_v1_request_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**add_reseller_royalties** | Option<[**Vec<models::AmendContractV1RequestResellerRoyaltiesInner>**](amendContract_v1_request_reseller_royalties_inner.md)> |  | [optional]
**add_subscriptions** | Option<[**Vec<models::EditContractV2RequestAddSubscriptionsInner>**](editContract_v2_request_add_subscriptions_inner.md)> | Optional list of [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/) to add to the contract. | [optional]
**add_spend_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataSpendThresholdConfiguration**](getContract_v2_200_response_data_spend_threshold_configuration.md)> |  | [optional]
**add_prepaid_balance_threshold_configuration** | Option<[**models::GetContractV2200ResponseDataPrepaidBalanceThresholdConfiguration**](getContract_v2_200_response_data_prepaid_balance_threshold_configuration.md)> |  | [optional]
**add_billing_provider_configuration_update** | Option<[**models::EditContractV2RequestAddBillingProviderConfigurationUpdate**](editContract_v2_request_add_billing_provider_configuration_update.md)> |  | [optional]
**add_revenue_system_configuration_update** | Option<[**models::EditContractV2RequestAddRevenueSystemConfigurationUpdate**](editContract_v2_request_add_revenue_system_configuration_update.md)> |  | [optional]
**add_spend_trackers** | Option<[**Vec<models::CreateContractV1RequestSpendTrackersInner>**](createContract_v1_request_spend_trackers_inner.md)> | Spend trackers to add to this contract. Aliases must be unique within a contract. | [optional]
**update_contract_name** | Option<**String**> | Value to update the contract name to. If not provided, the contract name will remain unchanged. | [optional]
**update_scheduled_charges** | Option<[**Vec<models::EditContractV2RequestUpdateScheduledChargesInner>**](editContract_v2_request_update_scheduled_charges_inner.md)> |  | [optional]
**update_commits** | Option<[**Vec<models::EditContractV2RequestUpdateCommitsInner>**](editContract_v2_request_update_commits_inner.md)> |  | [optional]
**update_credits** | Option<[**Vec<models::EditContractV2RequestUpdateCreditsInner>**](editContract_v2_request_update_credits_inner.md)> |  | [optional]
**update_recurring_commits** | Option<[**Vec<models::EditContractV2RequestUpdateRecurringCommitsInner>**](editContract_v2_request_update_recurring_commits_inner.md)> | Edits to these recurring commits will only affect commits whose access schedules has not started. Expired commits, and commits with an active access schedule will remain unchanged. | [optional]
**update_recurring_credits** | Option<[**Vec<models::EditContractV2RequestUpdateRecurringCreditsInner>**](editContract_v2_request_update_recurring_credits_inner.md)> | Edits to these recurring credits will only affect credits whose access schedules has not started. Expired credits, and credits with an active access schedule will remain unchanged. | [optional]
**update_subscriptions** | Option<[**Vec<models::EditContractV2RequestUpdateSubscriptionsInner>**](editContract_v2_request_update_subscriptions_inner.md)> | Optional list of subscriptions to update. | [optional]
**update_spend_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration**](getContractEditHistory_v2_200_response_data_inner_update_spend_threshold_configuration.md)> |  | [optional]
**update_prepaid_balance_threshold_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration**](getContractEditHistory_v2_200_response_data_inner_update_prepaid_balance_threshold_configuration.md)> |  | [optional]
**update_contract_end_date** | Option<**String**> | RFC 3339 timestamp indicating when the contract will end (exclusive). | [optional]
**update_net_payment_terms_days** | Option<**f64**> | Number of days after issuance of invoice after which the invoice is due (e.g. Net 30). | [optional]
**allow_contract_ending_before_finalized_invoice** | Option<**bool**> | If true, allows setting the contract end date earlier than the end_timestamp of existing finalized invoices. Finalized invoices will be unchanged; if you want to incorporate the new end date, you can void and regenerate finalized usage invoices. Defaults to true. | [optional]
**archive_commits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> | IDs of commits to archive | [optional]
**archive_credits** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> | IDs of credits to archive | [optional]
**archive_scheduled_charges** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> | IDs of scheduled charges to archive | [optional]
**archive_spend_trackers** | Option<**Vec<String>**> | Aliases of spend trackers to archive. | [optional]
**remove_overrides** | Option<[**Vec<models::ArchiveAlertV1200ResponseData>**](archiveAlert_v1_200_response_data.md)> | IDs of overrides to remove | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


