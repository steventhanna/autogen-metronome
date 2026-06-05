# CustomerBillingProviderConfigurationCreateCustomerInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | [**models::ContractsBillingProviderType**](ContractsBillingProviderType.md) |  | 
**tax_provider** | Option<[**models::TaxProviderType**](TaxProviderType.md)> |  | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration. | [optional]
**delivery_method_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<[**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


