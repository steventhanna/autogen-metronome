# EditContractV2RequestAddBillingProviderConfigurationUpdateBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider_configuration_id** | Option<**uuid::Uuid**> |  | [optional]
**billing_provider** | Option<**BillingProvider**> |  (enum: aws_marketplace, stripe, netsuite, custom, azure_marketplace, quickbooks_online, workday, gcp_marketplace, metronome) | [optional]
**delivery_method** | Option<**DeliveryMethod**> |  (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


