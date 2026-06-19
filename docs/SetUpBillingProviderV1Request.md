# SetUpBillingProviderV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | [**models::GaBillingProviderType**](GABillingProviderType.md) |  | 
**delivery_method** | [**models::GaBillingProviderDeliveryMethodType**](GABillingProviderDeliveryMethodType.md) |  | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Account-level configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. See examples below. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


