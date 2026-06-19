# ProService

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**description** | Option<**String**> |  | [optional]
**product_id** | **uuid::Uuid** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**unit_price** | **f64** | Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified. | 
**quantity** | **f64** | Quantity for the charge. Will be multiplied by unit_price to determine the amount. | 
**max_amount** | **f64** | Maximum amount for the term. | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


