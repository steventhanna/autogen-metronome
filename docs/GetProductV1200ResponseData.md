# GetProductV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**r#type** | **String** |  | 
**archived_at** | Option<**String**> |  | [optional]
**initial** | [**models::GetProductV1200ResponseDataInitial**](getProduct_v1_200_response_data_initial.md) |  | 
**current** | [**models::GetProductV1200ResponseDataInitial**](getProduct_v1_200_response_data_initial.md) |  | 
**updates** | [**Vec<models::GetProductV1200ResponseDataUpdatesInner>**](getProduct_v1_200_response_data_updates_inner.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


