# CustomerRevenueSystemConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of this configuration; can be provided when associating to a contract. | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**delivery_method_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the delivery method used for this customer configuration. | 
**provider** | [**models::RevenueSystemProviderType**](RevenueSystemProviderType.md) |  | 
**configuration** | [**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md) | Configuration for the revenue system. The structure of this object is specific to the provider. | 
**delivery_method** | Option<[**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md)> |  | [optional]
**delivery_method_configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the delivery method. The structure of this object is specific to the delivery method. | [optional]
**archived_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


