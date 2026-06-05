# GetCustomerV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) | the Metronome ID of the customer | 
**external_id** | **String** | (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events | 
**ingest_aliases** | **Vec<String>** | aliases for this customer that can be used instead of the Metronome customer ID in usage events | 
**name** | **String** |  | 
**customer_config** | [**models::GetCustomerV1200ResponseDataCustomerConfig**](getCustomer_v1_200_response_data_customer_config.md) |  | 
**custom_fields** | **std::collections::HashMap<String, String>** | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | 
**created_at** | **String** | RFC 3339 timestamp indicating when the customer was created. | 
**archived_at** | Option<**String**> | RFC 3339 timestamp indicating when the customer was archived. Null if the customer is active. | [optional]
**updated_at** | **String** | RFC 3339 timestamp indicating when the customer was last updated. | 
**current_billable_status** | Option<[**models::GetCustomerV1200ResponseDataCurrentBillableStatus**](getCustomer_v1_200_response_data_current_billable_status.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


