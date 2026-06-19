# CustomerRevenueSystemConfigurationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | [**models::RevenueSystemProviderType**](RevenueSystemProviderType.md) |  | 
**customer_id** | **uuid::Uuid** |  | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the revenue system. The structure of this object is specific to the provider. | 
**delivery_method_id** | Option<**uuid::Uuid**> | Optional ID of the delivery method to use for this customer configuration, if multiple delivery methods are configured for the same provider. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


