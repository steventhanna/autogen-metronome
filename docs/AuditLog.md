# AuditLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**actor** | Option<[**models::Actor**](Actor.md)> |  | [optional]
**request** | [**models::AuditLogRequest**](AuditLogRequest.md) |  | 
**resource_type** | Option<**String**> |  | [optional]
**resource_id** | Option<**String**> |  | [optional]
**action** | Option<**String**> |  | [optional]
**status** | Option<**Status**> |  (enum: success, failure, pending) | [optional]
**description** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


