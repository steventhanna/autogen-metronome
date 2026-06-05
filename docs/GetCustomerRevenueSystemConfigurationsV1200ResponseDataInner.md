# GetCustomerRevenueSystemConfigurationsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of this configuration; can be provided when associating to a contract. | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**delivery_method_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the delivery method used for this customer configuration. | 
**provider** | **String** | The revenue system provider (e.g. netsuite). | 
**configuration** | [**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md) | Configuration for the revenue system. The structure of this object is specific to the provider. | 
**delivery_method** | Option<**String**> | The method to use for delivering data to the revenue system. | [optional]
**delivery_method_configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the delivery method. The structure of this object is specific to the delivery method. | [optional]
**archived_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


