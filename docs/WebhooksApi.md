# \WebhooksApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_webhook_delivery_v1**](WebhooksApi.md#get_webhook_delivery_v1) | **GET** /v1/webhooks/{webhook_id}/triggered_notifications/{triggered_notification_id} | Get Triggered Notification and Delivery Attempts
[**list_webhook_deliveries_v1**](WebhooksApi.md#list_webhook_deliveries_v1) | **POST** /v1/webhooks/{webhook_id}/triggered_notifications | List triggered notifications by webhook



## get_webhook_delivery_v1

> models::GetWebhookDeliveryV1200Response get_webhook_delivery_v1(webhook_id, triggered_notification_id)
Get Triggered Notification and Delivery Attempts

List all delivery attempts for a triggered notification to a specific webhook destination. Use this endpoint to debug webhook delivery issues programmatically by viewing the payload and number of retries for a specific triggered notification.  ### Key response fields:  - Notification payload for the specific triggered notification - Array of all attempts to the webhook destination for the triggered notification, including attempt timestamp and status code  ### Usage guidelines:  - Triggered notification ID is distinct from notification ID. Notification ID represents the notification configuration (“notify me when any customer reaches \\$5 in credit balance”). Triggered notification ID is the specific instance when that notification was triggered (”Customer A’s credit balance reached \\$5 on October 5th at 11:45 PM”). - Use this endpoint in conjunction with [List Triggered Notifications](/api-reference/webhooks/list-triggered-notifications-by-webhook) to identify the specific triggered notification ID to pass in.. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. Only notifications from the same Metronome environment as your API token are returned. | [required] |
**triggered_notification_id** | **uuid::Uuid** | ID of the triggered notification. | [required] |

### Return type

[**models::GetWebhookDeliveryV1200Response**](getWebhookDelivery_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_webhook_deliveries_v1

> models::ListWebhookDeliveriesV1200Response list_webhook_deliveries_v1(webhook_id, list_webhook_deliveries_v1_request)
List triggered notifications by webhook

Retrieve all triggered notifications with delivery attempts to a webhook destination, with flexible filtering options to monitor, audit, and debug notification history. Results are ordered by the time of the first delivery attempt and limited to the most recent 30 days.  ### Use this endpoint to:  - Identify whether notifications were triggered and delivered to webhook destinations when expected to debug issues - Understand and audit the timeline of triggered notifications - Monitor webhook destination health  ### Key response fields:  Array of triggered notifications containing:  - ID of the specific triggered notification - Webhook destination ID - Customer ID - Notification configuration ID and type - `first_attempted_at`: Timestamp of the first delivery attempt to the webhook destination - `last_attempted_at`: Timestamp of the latest delivery attempt - Latest response status code - Number of total delivery attempts to the webhook destination  ### Usage guidelines:  - Use filters to narrow down results and reduce pagination - Use the `notification_ids` filter to investigate triggered notifications for a specific notification configuration. Pass the configuration's ID (e.g., `8deed800-1b7a-495d-a207-6c52bac54dc9`), available as `notification_id` in delivery responses. - Filter for system notifications using notification type rather than notification ID - Use the [Get Triggered Notification and Delivery Attempts](/api-reference/webhooks/get-triggered-notification-and-delivery-attempts) endpoint to understand the total retry attempts for a specific triggered notification 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**webhook_id** | **uuid::Uuid** | ID of the webhook destination. Only notifications from the same Metronome environment as your API token are returned. | [required] |
**list_webhook_deliveries_v1_request** | [**ListWebhookDeliveriesV1Request**](ListWebhookDeliveriesV1Request.md) |  | [required] |

### Return type

[**models::ListWebhookDeliveriesV1200Response**](listWebhookDeliveries_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

