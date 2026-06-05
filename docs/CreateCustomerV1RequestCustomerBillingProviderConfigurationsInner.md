# CreateCustomerV1RequestCustomerBillingProviderConfigurationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | **String** | The billing provider set for this configuration. | 
**tax_provider** | Option<**String**> | Specifies which tax provider Metronome should use for tax calculation when billing through Stripe. This is only supported for Stripe billing provider configurations with auto_charge_payment_intent or manual_charge_payment_intent collection methods. | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration. | [optional]
**delivery_method_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<**String**> | The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


