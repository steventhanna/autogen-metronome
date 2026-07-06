# CreateContractV1RequestBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider_configuration_id** | Option<**uuid::Uuid**> | The Metronome ID of the billing provider configuration. Use when a customer has multiple configurations with the same billing provider and delivery method. Otherwise, specify the billing_provider and delivery_method. | [optional]
**billing_provider** | Option<**BillingProvider**> | Do not specify if using billing_provider_configuration_id. (enum: aws_marketplace, azure_marketplace, gcp_marketplace, stripe, netsuite) | [optional]
**delivery_method** | Option<**DeliveryMethod**> | Do not specify if using billing_provider_configuration_id. (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


