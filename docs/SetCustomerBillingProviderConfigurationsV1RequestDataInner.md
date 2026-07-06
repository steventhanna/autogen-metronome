# SetCustomerBillingProviderConfigurationsV1RequestDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider** | **BillingProvider** | The billing provider set for this configuration. (enum: aws_marketplace, stripe, netsuite, custom, azure_marketplace, quickbooks_online, workday, gcp_marketplace, metronome) | 
**customer_id** | **uuid::Uuid** |  | 
**tax_provider** | Option<**TaxProvider**> | Specifies which tax provider Metronome should use for tax calculation when billing through Stripe. This is only supported for Stripe billing provider configurations with auto_charge_payment_intent or manual_charge_payment_intent collection methods. (enum: anrok, avalara, stripe) | [optional]
**configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery method combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration.  For AWS marketplace configurations, the aws_is_subscription_product flag can be used to indicate a product with usage-based pricing.  More information can be found [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome). | [optional]
**delivery_method_id** | Option<**uuid::Uuid**> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<**DeliveryMethod**> | The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided. (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


