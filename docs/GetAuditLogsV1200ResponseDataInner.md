# GetAuditLogsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**actor** | Option<[**models::GetAuditLogsV1200ResponseDataInnerActor**](GetAuditLogsV1200ResponseDataInnerActor.md)> |  | [optional]
**request** | [**models::GetAuditLogsV1200ResponseDataInnerRequest**](GetAuditLogsV1200ResponseDataInnerRequest.md) |  | 
**resource_type** | Option<**String**> |  | [optional]
**resource_id** | Option<**String**> |  | [optional]
**action** | Option<**String**> |  | [optional]
**status** | Option<**Status**> |  (enum: success, failure, pending) | [optional]
**description** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


