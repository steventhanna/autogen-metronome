# GetWebhookDeliveryV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of the triggered notification, matching triggered_notification_id in the request path. Shared across retries. | 
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. | 
**customer_id** | Option<**uuid::Uuid**> | ID of the associated customer, or null if not applicable. | 
**notification_id** | Option<**String**> | ID of the notification configuration, or null if not applicable. Separate from the triggered notification's id. | 
**notification_type** | **String** | Notification type, such as invoice.finalized or alerts.spend_threshold_reached. | 
**notification_payload** | **String** | The exact webhook request body as a JSON-encoded string. Parse as JSON to access the notification fields. | 
**attempts** | [**Vec<models::GetWebhookDeliveryV1200ResponseDataAttemptsInner>**](GetWebhookDeliveryV1200ResponseDataAttemptsInner.md) | Recorded delivery attempts, including retries, ordered from oldest to newest. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


