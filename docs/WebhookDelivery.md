# WebhookDelivery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of the triggered notification. | 
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. | 
**customer_id** | Option<**uuid::Uuid**> |  | 
**notification_id** | Option<**String**> | ID of the notification configuration, when applicable. | 
**notification_type** | **String** |  | 
**first_attempted_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**last_attempted_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**last_response_status_code** | **f64** |  | 
**num_attempts** | **f64** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


