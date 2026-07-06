# GetProductV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**r#type** | **Type** |  (enum: USAGE, SUBSCRIPTION, COMPOSITE, FIXED, PRO_SERVICE) | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**initial** | [**models::GetProductV1200ResponseDataInitial**](GetProductV1200ResponseDataInitial.md) |  | 
**current** | [**models::GetProductV1200ResponseDataInitial**](GetProductV1200ResponseDataInitial.md) |  | 
**updates** | [**Vec<models::GetProductV1200ResponseDataUpdatesInner>**](GetProductV1200ResponseDataUpdatesInner.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


