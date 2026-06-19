# CustomerBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of this configuration; can be provided as the billing_provider_configuration_id when creating a contract. | 
**billing_provider** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**customer_id** | **uuid::Uuid** |  | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the billing provider. The structure of this object is specific to the billing provider. | 
**delivery_method_id** | **uuid::Uuid** | ID of the delivery method to use for this customer. | 
**delivery_method** | [**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md) |  | 
**delivery_method_configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the delivery method. The structure of this object is specific to the delivery method. | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


