# CreateContractV1RequestCommitsInnerAccessSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_type** | Option<**AccessType**> | Determines how the balance is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. Defaults to `SPEND` if omitted. (enum: SPEND, spend, QUANTITY, quantity) | [optional]
**credit_type_id** | Option<**uuid::Uuid**> | Defaults to USD (cents) if not passed | [optional]
**schedule_items** | [**Vec<models::CreateContractV1RequestCommitsInnerAccessScheduleScheduleItemsInner>**](CreateContractV1RequestCommitsInnerAccessScheduleScheduleItemsInner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


