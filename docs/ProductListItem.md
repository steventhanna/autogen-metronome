# ProductListItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**r#type** | **String** |  | 
**archived_at** | Option<**String**> |  | [optional]
**initial** | [**models::ProductListItemState**](ProductListItemState.md) |  | 
**current** | [**models::ProductListItemState**](ProductListItemState.md) |  | 
**updates** | [**Vec<models::ProductListItemUpdate>**](ProductListItemUpdate.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


