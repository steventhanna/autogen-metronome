# BillingProviderDeliveryMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**delivery_method_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the delivery method to use for this customer. | 
**delivery_method** | [**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md) |  | 
**delivery_method_configuration** | [**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md) | Configuration for the delivery method. The structure of this object is specific to the delivery method. Some configuration may be omitted for security reasons. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


