# GetContractV2200ResponseDataCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**contract** | Option<[**models::ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**r#type** | **Type** |  (enum: PREPAID, POSTPAID) | 
**rate_type** | Option<**RateType**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]
**name** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | If multiple credits or commits are applicable, the one with the lower priority will apply first. | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](GetContractV1200ResponseDataInitialCommitsInnerProduct.md) |  | 
**access_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerAccessSchedule**](GetContractV1200ResponseDataInitialCommitsInnerAccessSchedule.md)> |  | [optional]
**invoice_schedule** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerInvoiceSchedule**](GetContractV1200ResponseDataInitialCommitsInnerInvoiceSchedule.md)> |  | [optional]
**invoice_contract** | Option<[**models::ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**rolled_over_from** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerRolledOverFrom**](GetContractV1200ResponseDataInitialCommitsInnerRolledOverFrom.md)> |  | [optional]
**description** | Option<**String**> |  | [optional]
**rollover_fraction** | Option<**f64**> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**applicable_contract_ids** | Option<**Vec<uuid::Uuid>**> |  | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**ledger** | Option<[**Vec<models::GetContractV2200ResponseDataCommitsInnerLedgerInner>**](GetContractV2200ResponseDataCommitsInnerLedgerInner.md)> | A list of ordered events that impact the balance of a commit. For example, an invoice deduction or a rollover. | [optional]
**balance** | Option<**f64**> | The current balance of the credit or commit. This balance reflects the amount of credit or commit that the customer has access to use at this moment - thus, expired and upcoming credit or commit segments contribute 0 to the balance. The balance will match the sum of all ledger entries with the exception of the case where the sum of negative manual ledger entries exceeds the positive amount remaining on the credit or commit - in that case, the balance will be 0. All manual ledger entries associated with active credit or commit segments are included in the balance, including future-dated manual ledger entries. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**hierarchy_configuration** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration**](GetContractV1200ResponseDataInitialCommitsInnerHierarchyConfiguration.md)> |  | [optional]
**spend_tracker_attributes** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerSpendTrackerAttributes**](GetContractV1200ResponseDataInitialCommitsInnerSpendTrackerAttributes.md)> |  | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** | Timestamp of when the commit was created. - Recurring commits: latter of commit service period date and parent commit start date - Rollover commits: when the new contract started  | 
**created_by** | Option<**String**> | The actor who created this commit. Omitted for system-generated commits such as recurring commits, rollover commits, and threshold commits. | [optional]
**recurring_commit_id** | Option<**uuid::Uuid**> | The ID of the recurring commit that created this commit | [optional]
**subscription_config** | Option<[**models::GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfSubscriptionConfig**](GetContractV1200ResponseDataInitialRecurringCommitsInnerAllOfSubscriptionConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


