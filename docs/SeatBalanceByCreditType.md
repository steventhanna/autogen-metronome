# SeatBalanceByCreditType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_type** | Option<**AccessType**> | Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. (enum: SPEND, QUANTITY) | [optional]
**credit_type_id** | **uuid::Uuid** | This ID identifies the credit type for the balance. Quantity-based balances return the null credit type UUID. | 
**balance** | **f64** | The total balance across all commits and credits for this seat, of this credit type. | 
**starting_balance** | **f64** | The total initial balances of all commits and credits for this seat, of this credit type. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


