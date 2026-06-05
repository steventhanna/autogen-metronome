# \NotificationsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_notification_config_v2**](NotificationsApi.md#archive_notification_config_v2) | **POST** /v2/notifications/archive | Archive an offset lifecycle event notification configuration
[**create_notification_config_v2**](NotificationsApi.md#create_notification_config_v2) | **POST** /v2/notifications/create | Create an offset lifecycle event notification configuration
[**edit_notification_config_v2**](NotificationsApi.md#edit_notification_config_v2) | **POST** /v2/notifications/edit | Edit an offset lifecycle event notification configuration
[**get_notification_config_v2**](NotificationsApi.md#get_notification_config_v2) | **POST** /v2/notifications/get | Get an offset lifecycle event notification configuration
[**list_offset_notification_configs_v2**](NotificationsApi.md#list_offset_notification_configs_v2) | **POST** /v2/notifications/offset/list | List offset lifecycle event notification configurations
[**list_system_notification_configs_v2**](NotificationsApi.md#list_system_notification_configs_v2) | **POST** /v2/notifications/system/list | List system notification event types



## archive_notification_config_v2

> models::CreateNotificationConfigV2200Response archive_notification_config_v2(archive_notification_config_payload)
Archive an offset lifecycle event notification configuration

Archive an offset lifecycle event notification configuration. Archived notifications are not processed. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_notification_config_payload** | Option<[**ArchiveNotificationConfigPayload**](ArchiveNotificationConfigPayload.md)> | Offset notification configuration ID to archive |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_notification_config_v2

> models::CreateNotificationConfigV2200Response create_notification_config_v2(create_notification_config_payload)
Create an offset lifecycle event notification configuration

Create an offset lifecycle event notification configuration. The lifecycle event type is inferred from the policy.type field. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_notification_config_payload** | Option<[**CreateNotificationConfigPayload**](CreateNotificationConfigPayload.md)> | Notification configuration details |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## edit_notification_config_v2

> models::EditNotificationConfigV2200Response edit_notification_config_v2(edit_notification_config_payload)
Edit an offset lifecycle event notification configuration

Edit an existing offset lifecycle event notification configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edit_notification_config_payload** | Option<[**EditNotificationConfigPayload**](EditNotificationConfigPayload.md)> | Offset notification configuration updates |  |

### Return type

[**models::EditNotificationConfigV2200Response**](editNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_notification_config_v2

> models::CreateNotificationConfigV2200Response get_notification_config_v2(get_notification_config_payload)
Get an offset lifecycle event notification configuration

Retrieve a specific offset lifecycle event notification configuration by ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_notification_config_payload** | Option<[**GetNotificationConfigPayload**](GetNotificationConfigPayload.md)> | Offset notification configuration ID |  |

### Return type

[**models::CreateNotificationConfigV2200Response**](createNotificationConfig_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_offset_notification_configs_v2

> models::ListOffsetNotificationConfigsV2200Response list_offset_notification_configs_v2(list_offset_notification_configs_payload)
List offset lifecycle event notification configurations

List offset lifecycle event notification configurations. These are user-created notifications that trigger at a specified time offset relative to lifecycle events. Returns a maximum of 400 results per request. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_offset_notification_configs_payload** | Option<[**ListOffsetNotificationConfigsPayload**](ListOffsetNotificationConfigsPayload.md)> | Optional pagination and filtering parameters |  |

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
List system notification event types

List available system lifecycle event types for notifications. These are read-only event types that can be used when creating offset notifications.

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

