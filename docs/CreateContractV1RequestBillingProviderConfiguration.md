# CreateContractV1RequestBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider_configuration_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The Metronome ID of the billing provider configuration. Use when a customer has multiple configurations with the same billing provider and delivery method. Otherwise, specify the billing_provider and delivery_method. | [optional]
**billing_provider** | Option<**String**> | Do not specify if using billing_provider_configuration_id. | [optional]
**delivery_method** | Option<**String**> | Do not specify if using billing_provider_configuration_id. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


