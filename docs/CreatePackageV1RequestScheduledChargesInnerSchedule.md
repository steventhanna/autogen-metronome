# CreatePackageV1RequestScheduledChargesInnerSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | Defaults to USD (cents) if not passed. | [optional]
**schedule_items** | [**Vec<models::CreatePackageV1RequestCommitsInnerInvoiceScheduleAllOfScheduleItemsInner>**](createPackage_v1_request_commits_inner_invoice_schedule_allOf_schedule_items_inner.md) | Either provide amount or provide both unit_price and quantity. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


