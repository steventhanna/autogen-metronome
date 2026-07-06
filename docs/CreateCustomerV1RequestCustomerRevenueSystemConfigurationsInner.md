# CreateCustomerV1RequestCustomerRevenueSystemConfigurationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **Provider** | The revenue system provider set for this configuration. (enum: netsuite) | 
**configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the revenue system provider. The structure of this object is specific to the revenue system provider. For NetSuite, this should contain `netsuite_customer_id`. | [optional]
**delivery_method_id** | Option<**uuid::Uuid**> | ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided. | [optional]
**delivery_method** | Option<**DeliveryMethod**> | The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided. (enum: direct_to_billing_provider) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


