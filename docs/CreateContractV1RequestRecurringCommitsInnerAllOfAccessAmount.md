# CreateContractV1RequestRecurringCommitsInnerAllOfAccessAmount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_type** | Option<**AccessType**> | Indicates how the balance of child commits is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. (enum: SPEND, QUANTITY, spend, quantity) | [optional]
**unit_price** | **f64** |  | 
**quantity** | Option<**f64**> | This field is required unless a subscription is attached via `subscription_config`. | [optional]
**credit_type_id** | Option<**uuid::Uuid**> | Defaults to USD (cents) if not passed | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


