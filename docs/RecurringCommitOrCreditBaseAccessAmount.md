# RecurringCommitOrCreditBaseAccessAmount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_type** | Option<**AccessType**> | Indicates how the balance of child commits is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. (enum: SPEND, QUANTITY) | [optional]
**unit_price** | **f64** |  | 
**quantity** | Option<**f64**> |  | [optional]
**credit_type_id** | **uuid::Uuid** | This ID identifies the credit type for the access amount. Quantity-based recurring commits and credits return the null credit type UUID. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


