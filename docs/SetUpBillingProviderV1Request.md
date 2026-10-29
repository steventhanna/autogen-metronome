# SetUpBillingProviderV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | **BillingProvider** | The billing provider set for this configuration. (enum: aws_marketplace, azure_marketplace, gcp_marketplace) | 
**delivery_method** | **DeliveryMethod** | The method to use for delivering invoices for this configuration. (enum: direct_to_billing_provider, aws_sqs, aws_sns) | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Account-level configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. See examples below. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


