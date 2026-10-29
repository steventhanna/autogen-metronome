# CreateCustomerV1RequestCustomerBillingProviderConfigurationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | **BillingProvider** | The billing provider set for this configuration. (enum: aws_marketplace, azure_marketplace, gcp_marketplace, stripe, netsuite) | 
**tax_provider** | Option<**TaxProvider**> | Specifies which tax provider Metronome should use for tax calculation when billing through Stripe. This is only supported for Stripe billing provider configurations. (enum: anrok, avalara, stripe) | [optional]
**configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration. | [optional]
**delivery_method_id** | Option<**uuid::Uuid**> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<**DeliveryMethod**> | The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided. (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


