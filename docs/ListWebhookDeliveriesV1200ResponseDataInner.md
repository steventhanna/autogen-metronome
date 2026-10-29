# ListWebhookDeliveriesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | ID of the triggered notification. Shared across retries and used as triggered_notification_id to retrieve delivery details. | 
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. | 
**customer_id** | Option<**uuid::Uuid**> | ID of the associated customer, or null if not applicable. | 
**notification_id** | Option<**String**> | ID of the notification configuration, or null if not applicable. Use this value in the notification_ids filter. | 
**notification_type** | **String** | Notification type, such as invoice.finalized or alerts.spend_threshold_reached. | 
**first_attempted_at** | **chrono::DateTime<chrono::FixedOffset>** | Timestamp of the first delivery attempt to this webhook destination. The list endpoint filters by this timestamp and returns notifications from newest to oldest. | 
**last_attempted_at** | **chrono::DateTime<chrono::FixedOffset>** | Timestamp of the most recent recorded attempt. May be after end_date if the notification was retried later. | 
**last_response_status_code** | **f64** | Response status code for the most recent attempt. Codes from 200 to 299 indicate acknowledgment by the destination. Failed attempts may still be retried. | 
**num_attempts** | **f64** | Total number of recorded delivery attempts for this notification to this webhook destination within the last 30 days, including the initial attempt and all retries. Includes attempts after end_date. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


