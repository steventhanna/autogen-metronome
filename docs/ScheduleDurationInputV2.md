# ScheduleDurationInputV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_type** | Option<**AccessType**> | Determines how the balance is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. Defaults to `SPEND` if omitted. (enum: SPEND, spend, QUANTITY, quantity) | [optional]
**credit_type_id** | Option<**uuid::Uuid**> |  | [optional]
**schedule_items** | [**Vec<models::ScheduleDurationInputScheduleItemsInner>**](ScheduleDurationInputScheduleItemsInner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


