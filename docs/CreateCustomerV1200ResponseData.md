# CreateCustomerV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | the Metronome ID of the customer | 
**external_id** | **String** | (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events | 
**ingest_aliases** | **Vec<String>** | aliases for this customer that can be used instead of the Metronome customer ID in usage events | 
**name** | **String** |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


