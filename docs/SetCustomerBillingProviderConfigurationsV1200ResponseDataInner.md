# SetCustomerBillingProviderConfigurationsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**uuid::Uuid**> | ID of the created configuration | [optional]
**billing_provider** | Option<**BillingProvider**> | The billing provider set for this configuration. (enum: aws_marketplace, stripe, netsuite, custom, azure_marketplace, quickbooks_online, workday, gcp_marketplace, metronome) | [optional]
**customer_id** | Option<**uuid::Uuid**> | ID of the customer this configuration is associated with. | [optional]
**configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery method combination. | [optional]
**delivery_method_id** | Option<**uuid::Uuid**> | ID of the delivery method used for this customer configuration. | [optional]
**tax_provider** | Option<**TaxProvider**> | The tax provider set for this configuration. (enum: anrok, avalara, stripe) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


