# CustomerBillingProviderConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of this configuration; can be provided as the billing_provider_configuration_id when creating a contract. | 
**billing_provider** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**customer_id** | **uuid::Uuid** |  | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the billing provider. The structure of this object is specific to the billing provider. | 
**delivery_method_id** | **uuid::Uuid** | ID of the delivery method to use for this customer. | 
**delivery_method** | [**models::BillingProviderDeliveryMethodType**](BillingProviderDeliveryMethodType.md) |  | 
**delivery_method_configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the delivery method. The structure of this object is specific to the delivery method. | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 
**unbillable_invoices_configuration** | Option<[**Vec<models::UnbillableInvoiceRule>**](UnbillableInvoiceRule.md)> | Rules that stop matching invoices from being sent to the billing provider. Supported for Stripe and NetSuite billing provider configurations. When omitted, every invoice is sent to the billing provider. Stripe invoices can be force-sent after a rule suppresses them. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


