# EditContractV2RequestUpdateSubscriptionsInnerQuantityUpdatesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | Option<**f64**> | The new quantity for the subscription. Must be provided if quantity_delta is not provided. Must be non-negative. | [optional]
**quantity_delta** | Option<**f64**> | The delta to add to the subscription's quantity. Must be provided if quantity is not provided. Can't be zero. It also can't result in a negative quantity on the subscription. | [optional]
**starting_at** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


