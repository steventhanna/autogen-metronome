# CustomerBillingProviderConfigurationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**tax_provider** | Option<[**models::TaxProviderType**](TaxProviderType.md)> |  | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery method combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration.  For AWS marketplace configurations, the aws_is_subscription_product flag can be used to indicate a product with usage-based pricing.  More information can be found [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome). | [optional]
**delivery_method_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<[**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


