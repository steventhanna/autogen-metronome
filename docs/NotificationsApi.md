# \NotificationsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_notification_config_v2**](NotificationsApi.md#archive_notification_config_v2) | **POST** /v2/notifications/archive | Archive an offset lifecycle event notification configuration
[**create_notification_config_v2**](NotificationsApi.md#create_notification_config_v2) | **POST** /v2/notifications/create | Create an offset lifecycle event notification configuration
[**edit_notification_config_v2**](NotificationsApi.md#edit_notification_config_v2) | **POST** /v2/notifications/edit | Edit an offset or system notification
[**get_notification_config_v2**](NotificationsApi.md#get_notification_config_v2) | **POST** /v2/notifications/get | Get an offset lifecycle event notification configuration
[**list_offset_notification_configs_v2**](NotificationsApi.md#list_offset_notification_configs_v2) | **POST** /v2/notifications/offset/list | List offset lifecycle event notification configurations
[**list_system_notification_configs_v2**](NotificationsApi.md#list_system_notification_configs_v2) | **POST** /v2/notifications/system/list | List system notification types



## archive_notification_config_v2

> models::CreateNotificationConfigV2200Response archive_notification_config_v2(archive_alert_v1200_response_data)
Archive an offset lifecycle event notification configuration

Archive an offset lifecycle event notification configuration. Archived notifications are not processed. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | Offset notification configuration ID to archive |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_notification_config_v2

> models::CreateNotificationConfigV2200Response create_notification_config_v2(create_notification_config_v2_request)
Create an offset lifecycle event notification configuration

Create an offset lifecycle event notification configuration. The lifecycle event type is inferred from the policy.type field. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_notification_config_v2_request** | Option<[**CreateNotificationConfigV2Request**](CreateNotificationConfigV2Request.md)> | Notification configuration details |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## edit_notification_config_v2

> models::EditNotificationConfigV2200Response edit_notification_config_v2(edit_notification_config_v2_request)
Edit an offset or system notification

Edit an existing offset notification, or enable/disable a system notification

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edit_notification_config_v2_request** | Option<[**EditNotificationConfigV2Request**](EditNotificationConfigV2Request.md)> | Offset or system notification updates |  |

### Return type

[**models::EditNotificationConfigV2200Response**](editNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_notification_config_v2

> models::CreateNotificationConfigV2200Response get_notification_config_v2(archive_alert_v1200_response_data)
Get an offset lifecycle event notification configuration

Retrieve a specific offset lifecycle event notification configuration by ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | Offset notification configuration ID |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_offset_notification_configs_v2

> models::ListOffsetNotificationConfigsV2200Response list_offset_notification_configs_v2(list_offset_notification_configs_v2_request)
List offset lifecycle event notification configurations

List offset lifecycle event notification configurations. These are user-created notifications that trigger at a specified time offset relative to lifecycle events. Returns a maximum of 400 results per request. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_offset_notification_configs_v2_request** | Option<[**ListOffsetNotificationConfigsV2Request**](ListOffsetNotificationConfigsV2Request.md)> | Optional pagination and filtering parameters |  |

### Return type

[**models::ListOffsetNotificationConfigsV2200Response**](listOffsetNotificationConfigs_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_system_notification_configs_v2

> models::ListSystemNotificationConfigsV2200Response list_system_notification_configs_v2()
List system notification types

List available system notification types. You can enable these notifications directly or use supported types to create offset notifications.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::ListSystemNotificationConfigsV2200Response**](listSystemNotificationConfigs_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

