# SetCustomerBillingProviderConfigurationsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the created configuration | [optional]
**billing_provider** | Option<**String**> | The billing provider set for this configuration. | [optional]
**customer_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the customer this configuration is associated with. | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery method combination. | [optional]
**delivery_method_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the delivery method used for this customer configuration. | [optional]
**tax_provider** | Option<**String**> | The tax provider set for this configuration. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


