# WebhookDeliveryDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of the triggered notification. | 
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. | 
**customer_id** | Option<**uuid::Uuid**> |  | 
**notification_id** | Option<**String**> | ID of the notification configuration, when applicable. | 
**notification_type** | **String** |  | 
**notification_payload** | **String** | The exact payload sent to the webhook destination. | 
**attempts** | [**Vec<models::WebhookDeliveryAttempt>**](WebhookDeliveryAttempt.md) | Delivery attempts ordered from oldest to newest. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


