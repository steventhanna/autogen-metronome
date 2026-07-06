# ListConfiguredBillingProvidersV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | **BillingProvider** | The billing provider set for this configuration. (enum: aws_marketplace, stripe, netsuite, custom, azure_marketplace, quickbooks_online, workday, gcp_marketplace, metronome) | 
**delivery_method_id** | **uuid::Uuid** | ID of the delivery method to use for this customer. | 
**delivery_method** | **DeliveryMethod** | The method to use for delivering invoices to this customer. (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | 
**delivery_method_configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the delivery method. The structure of this object is specific to the delivery method. Some configuration may be omitted for security reasons. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


