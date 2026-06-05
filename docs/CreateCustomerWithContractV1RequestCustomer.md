# CreateCustomerWithContractV1RequestCustomer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ingest_aliases** | Option<**Vec<String>**> | Aliases that can be used to refer to this customer in usage events | [optional]
**name** | **String** | This will be truncated to 160 characters if the provided name is longer. | 
**customer_billing_provider_configurations** | Option<[**Vec<models::CreateCustomerV1RequestCustomerBillingProviderConfigurationsInner>**](createCustomer_v1_request_customer_billing_provider_configurations_inner.md)> |  | [optional]
**customer_revenue_system_configurations** | Option<[**Vec<models::CreateCustomerV1RequestCustomerRevenueSystemConfigurationsInner>**](createCustomer_v1_request_customer_revenue_system_configurations_inner.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


