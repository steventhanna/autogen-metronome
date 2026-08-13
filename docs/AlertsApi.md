# \AlertsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_alert_v1**](AlertsApi.md#archive_alert_v1) | **POST** /v1/alerts/archive | Archive a threshold notification
[**create_alert_v1**](AlertsApi.md#create_alert_v1) | **POST** /v1/alerts/create | Create a threshold notification
[**get_customer_alert_v1**](AlertsApi.md#get_customer_alert_v1) | **POST** /v1/customer-alerts/get | Get a threshold notification
[**list_customer_alerts_v1**](AlertsApi.md#list_customer_alerts_v1) | **POST** /v1/customer-alerts/list | Get all threshold notifications
[**reset_customer_alerts_v1**](AlertsApi.md#reset_customer_alerts_v1) | **POST** /v1/customer-alerts/reset | Reset a threshold notification



## archive_alert_v1

> models::ArchiveAlertV1200Response archive_alert_v1(archive_alert_v1_request)
Archive a threshold notification

Permanently disable a threshold notification and remove it from active monitoring across all customers. Archived threshold notifications stop evaluating immediately and can optionally release their uniqueness key for reuse in future threshold notification configurations.  ### Use this endpoint to: - Decommission threshold notifications that are no longer needed - Clean up test or deprecated threshold notification configurations - Free up uniqueness keys for reuse with new threshold notifications - Stop threshold notification evaluations without losing historical configuration data - Disable outdated monitoring rules during pricing model transitions  ### Key response fields: - data: Object containing the archived threshold notification's ID  ### Usage guidelines: - Irreversible for evaluation: Archived threshold notifications cannot be re-enabled; create a new threshold notification to resume monitoring - Uniqueness key handling: Set `release_uniqueness_key` : `true` to reuse the key in future threshold notifications - Immediate effect: Threshold notification evaluation stops instantly across all customers - Historical preservation: Archive operation maintains threshold notification history and configuration for compliance and auditing 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1_request** | Option<[**ArchiveAlertV1Request**](ArchiveAlertV1Request.md)> | The ID of the threshold notification to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_alert_v1

> models::ArchiveAlertV1200Response create_alert_v1(create_alert_v1_request)
Create a threshold notification

Create a new threshold notification to monitor customer spending, balances, and billing metrics in real-time. Metronome's notification system provides industry-leading speed with immediate evaluation capabilities, enabling you to proactively manage customer accounts and prevent revenue leakage.  This endpoint creates configurable threshold notifications that continuously monitor various billing thresholds including spend limits, credit balances, commitment utilization, and invoice totals. Threshold notifications can be configured globally for all customers or targeted to specific customer accounts.  ### Use this endpoint to: - Proactively monitor customer spending patterns to prevent unexpected overages or credit exhaustion - Automate notifications when customers approach commitment limits or credit thresholds - Enable real-time intervention for accounts at risk of churn or payment issues - Scale billing operations by automating threshold-based workflows and notifications  ### Key response fields:  A successful response returns a CustomerAlert object containing:  - The threshold notification configuration with its unique ID and current status - The customer's evaluation status (ok, in_alarm, or evaluating) - Threshold notification metadata including type, threshold values, and update timestamps  ### Usage guidelines: - Immediate evaluation: Set `evaluate_on_create` : `true` (default) for instant evaluation against existing customers - Uniqueness constraints: Each threshold notification must have a unique `uniqueness_key` within your organization. Use `release_uniqueness_key` : `true` when archiving to reuse keys - Notification type requirements: Different threshold notification types require specific fields (e.g., `billable_metric_id` for usage notifications, `credit_type_id` for credit-based threshold notifications) - Webhook delivery: Threshold notifications trigger webhook notifications for real-time integration with your systems. Configure webhook endpoints before creating threshold notifications - Performance at scale: Metronome's event-driven architecture processes threshold notification evaluations in real-time as usage events stream in, unlike competitors who rely on periodic polling or batch evaluation cycles 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_alert_v1_request** | Option<[**CreateAlertV1Request**](CreateAlertV1Request.md)> | The details of the threshold notification to create |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customer_alert_v1

> models::GetCustomerAlertV1200Response get_customer_alert_v1(get_customer_alert_v1_request)
Get a threshold notification

Retrieve the real-time evaluation status for a specific threshold notification-customer pair. This endpoint provides instant visibility into whether a customer has triggered a threshold notification condition, enabling you to monitor account health and take proactive action based on current threshold notification states.  ### Use this endpoint to: - Check if a specific customer is currently violating an threshold notification (`in_alarm` status) - Verify threshold notification configuration details and threshold values for a customer - Monitor the evaluation state of newly created or recently modified threshold notification - Build dashboards or automated workflows that respond to specific threshold notification conditions - Validate threshold notification behavior before deploying to production customers - Integrate threshold notification status checks into customer support tools or admin interfaces  ### Key response fields:  A CustomerAlert object containing:  - `customer_status`: The current evaluation state  - `ok` - Customer is within acceptable thresholds - `in_alarm` - Customer has breached the threshold for the notification - `evaluating` - Notification is currently being evaluated (typically during initial setup) - `null` - Notification has been archived - `triggered_by`: Additional context about what caused the notification to trigger (when applicable) - `updated_at`: Timestamp of when the `customer_status` was last updated - alert: Complete threshold notification configuration including:   - Notification ID, name, and type   - Current threshold values and credit type information   - Notification status (enabled, disabled, or archived)   - Any applied filters (credit grant types, custom fields, group values)  ### Usage guidelines: - Customer status: Returns the current evaluation state, not historical data. For threshold notification history, use webhook notifications or event logs - Required parameters: Both customer_id and alert_id must be valid UUIDs that exist in your organization - Archived notifications: Returns null for customer_status if the notification has been archived, but still includes the notification configuration details - Performance considerations: This endpoint queries live evaluation state, making it ideal for real-time monitoring but not for bulk status checks - Integration patterns: Best used for on-demand status checks in response to user actions or as part of targeted monitoring workflows - Error handling: Returns 404 if either the customer or alert_id doesn't exist or isn't accessible to your organization 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_customer_alert_v1_request** | Option<[**GetCustomerAlertV1Request**](GetCustomerAlertV1Request.md)> | The customer ID and notification ID of the threshold notification to get |  |

### Return type

[**models::GetCustomerAlertV1200Response**](getCustomerAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_customer_alerts_v1

> models::ListCustomerAlertsV1200Response list_customer_alerts_v1(next_page, list_customer_alerts_v1_request)
Get all threshold notifications

Retrieve all threshold notification configurations and their current statuses for a specific customer in a single API call. This endpoint provides a comprehensive view of all threshold notification monitoring a customer account.  ### Use this endpoint to: - Display all active threshold notifications for a customer in dashboards or admin panels - Quickly identify which threshold notifications a customer is currently triggering - Audit threshold notification coverage for specific accounts - Filter threshold notifications by status (enabled, disabled, or archived)  ### Key response fields: - data: Array of CustomerAlert objects, each containing:   - Current evaluation status (`ok`, `in_alarm`, `evaluating`, or `null`)   - Complete threshold notification configuration and threshold details   - Threshold notification metadata including type, name, and last update time - next_page: Pagination cursor for retrieving additional results  ### Usage guidelines: - Default behavior: Returns only enabled threshold notifications unless `alert_statuses` filter is specified - Pagination: Use the `next_page` cursor to retrieve all results for customers with many notifications - Performance: Efficiently retrieves multiple threshold notification statuses in a single request instead of making individual calls - Filtering: Pass the `alert_statuses` array to include disabled or archived threshold notifications in results 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**list_customer_alerts_v1_request** | Option<[**ListCustomerAlertsV1Request**](ListCustomerAlertsV1Request.md)> | The threshold notifications query to run |  |

### Return type

[**models::ListCustomerAlertsV1200Response**](listCustomerAlerts_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reset_customer_alerts_v1

> reset_customer_alerts_v1(reset_customer_alerts_v1_request)
Reset a threshold notification

Force an immediate re-evaluation of a specific threshold notification for a customer, clearing any previous state and triggering a fresh assessment against current thresholds. This endpoint ensures threshold notification accuracy after configuration changes or data corrections.  ### Use this endpoint to: - Clear false positive threshold notifications after fixing data issues - Re-evaluate threshold notifications after adjusting customer balances or credits - Test threshold notification behavior during development and debugging - Resolve stuck threshold notification that may be in an incorrect state - Trigger immediate evaluation after threshold modifications  ### Key response fields:  - 200 Success: Confirmation that the threshold notification has been reset and re-evaluation initiated - No response body is returned - the operation completes asynchronously  ### Usage guidelines: - Immediate effect: Triggers re-evaluation instantly, which may result in new webhook notifications if thresholds are breached - State clearing: Removes any cached evaluation state, ensuring a fresh assessment - Use sparingly: Intended for exceptional cases, not routine operations - Asynchronous processing: The reset completes immediately, but re-evaluation happens in the background 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**reset_customer_alerts_v1_request** | Option<[**ResetCustomerAlertsV1Request**](ResetCustomerAlertsV1Request.md)> | The customer ID and notification ID of the threshold notification to reset |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

