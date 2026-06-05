# CreateCustomerCommitV1RequestInvoiceSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | Defaults to USD (cents) if not passed. | [optional]
**schedule_items** | Option<[**Vec<models::CreateContractV1RequestCommitsInnerInvoiceScheduleScheduleItemsInner>**](createContract_v1_request_commits_inner_invoice_schedule_schedule_items_inner.md)> | Either provide amount or provide both unit_price and quantity. | [optional]
**recurring_schedule** | Option<[**models::CreateContractV1RequestCommitsInnerInvoiceScheduleRecurringSchedule**](createContract_v1_request_commits_inner_invoice_schedule_recurring_schedule.md)> |  | [optional]
**do_not_invoice** | Option<**bool**> | This field is only applicable to commit invoice schedules. If true, this schedule will not generate an invoice. | [optional][default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


