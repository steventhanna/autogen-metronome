# LifecycleEventOffsetNotificationConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID for this offset notification configuration | 
**name** | **String** | The name for this offset notification configuration.  | 
**r#type** | **String** | Indicates this is an offset lifecycle event notification | 
**policy** | [**models::LifecycleEventOffsetPolicy**](LifecycleEventOffsetPolicy.md) |  | 
**environment_type** | **String** | The environment type where this notification configuration was created.  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp when this notification configuration was created.  | 
**created_by** | **String** | Who created this notification configuration | 
**archived_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When this notification configuration was archived | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


