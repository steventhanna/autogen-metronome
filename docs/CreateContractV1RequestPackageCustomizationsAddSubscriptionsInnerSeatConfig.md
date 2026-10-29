# CreateContractV1RequestPackageCustomizationsAddSubscriptionsInnerSeatConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seat_group_key** | **String** | The property name, sent on usage events, that identifies the seat ID associated with the usage event.  For example, the property name might be seat_id or user_id. The property must be set as a group key on billable metrics and a presentation/pricing group key on contract products.  This allows linked recurring credits with an allocation per seat to be consumed by only one seat's usage. | 
**initial_seat_ids** | **Vec<String>** | The initial assigned seats on this subscription. | 
**initial_unassigned_seats** | Option<**f64**> | The initial amount of unassigned seats on this subscription. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


