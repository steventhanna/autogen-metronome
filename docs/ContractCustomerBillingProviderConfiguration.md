# ContractCustomerBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**delivery_method** | [**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md) |  | 
**id** | Option<**uuid::Uuid**> |  | [optional]
**configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the billing provider. The structure of this object is specific to the billing provider. | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


