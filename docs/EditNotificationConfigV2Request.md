# EditNotificationConfigV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The ID of the notification configuration to edit. Not provided when updating the configuration for system events  | [optional]
**is_enabled** | Option<**bool**> | Set to true to enable webhook messages for the notification indicated in the policy, false to disable. Only supported by system lifecycle events.  | [optional]
**policy** | [**models::EditNotificationConfigV2RequestPolicy**](editNotificationConfig_v2_request_policy.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


