# GetNetBalanceV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **f64** | The combined net balance that the customer has access to use at this moment across all pertinent commits and credits. | 
**credit_type_id** | **uuid::Uuid** | This ID identifies the credit type for the balance. The credit type can be fiat or a custom pricing unit. Quantity-based balances return the null credit type UUID. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


