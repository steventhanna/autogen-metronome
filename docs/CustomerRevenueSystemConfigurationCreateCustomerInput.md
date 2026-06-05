# CustomerRevenueSystemConfigurationCreateCustomerInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | [**models::RevenueSystemProviderType**](RevenueSystemProviderType.md) |  | 
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the revenue system provider. The structure of this object is specific to the revenue system provider. For NetSuite, this should contain `netsuite_customer_id`. | [optional]
**delivery_method_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<[**models::RevenueSystemDeliveryMethodType**](RevenueSystemDeliveryMethodType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


