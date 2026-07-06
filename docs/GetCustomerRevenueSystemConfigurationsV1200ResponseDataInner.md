# GetCustomerRevenueSystemConfigurationsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of this configuration; can be provided when associating to a contract. | 
**customer_id** | **uuid::Uuid** |  | 
**delivery_method_id** | **uuid::Uuid** | ID of the delivery method used for this customer configuration. | 
**provider** | **Provider** | The revenue system provider (e.g. netsuite). (enum: netsuite) | 
**configuration** | **std::collections::HashMap<String, serde_json::Value>** | Configuration for the revenue system. The structure of this object is specific to the provider. | 
**delivery_method** | Option<**DeliveryMethod**> | The method to use for delivering data to the revenue system. (enum: direct_to_billing_provider, aws_sqs, tackle, aws_sns) | [optional]
**delivery_method_configuration** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Configuration for the delivery method. The structure of this object is specific to the delivery method. | [optional]
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


