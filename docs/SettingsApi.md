# \SettingsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_credit_type_v1**](SettingsApi.md#archive_credit_type_v1) | **POST** /v1/credit-types/archive | Archive a pricing unit
[**create_credit_type_v1**](SettingsApi.md#create_credit_type_v1) | **POST** /v1/credit-types/create | Create a pricing unit
[**list_configured_billing_providers_v1**](SettingsApi.md#list_configured_billing_providers_v1) | **POST** /v1/listConfiguredBillingProviders | List account-level billing providers
[**list_credit_types_v1**](SettingsApi.md#list_credit_types_v1) | **GET** /v1/credit-types/list | List pricing units
[**set_up_billing_provider_v1**](SettingsApi.md#set_up_billing_provider_v1) | **POST** /v1/setUpBillingProvider | Set up account-level billing provider
[**upsert_anrok_api_token_v1**](SettingsApi.md#upsert_anrok_api_token_v1) | **POST** /v1/upsertAnrokApiToken | Upsert Anrok API token
[**upsert_avalara_credentials_v1**](SettingsApi.md#upsert_avalara_credentials_v1) | **POST** /v1/upsertAvalaraCredentials | Upsert Avalara credentials



## archive_credit_type_v1

> models::ArchiveAlertV1200Response archive_credit_type_v1(id)
Archive a pricing unit

Archive a custom pricing unit. Once archived, it will no longer appear in pricing unit selectors by default. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | Option<[**Id**](Id.md)> | The ID of the pricing unit to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_credit_type_v1

> models::ArchiveAlertV1200Response create_credit_type_v1(create_credit_type_v1_request)
Create a pricing unit

Create a custom pricing unit. Custom pricing units can be used to charge for usage in a non-fiat pricing unit, for example AI credits. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_credit_type_v1_request** | Option<[**CreateCreditTypeV1Request**](CreateCreditTypeV1Request.md)> |  |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_configured_billing_providers_v1

> models::ListConfiguredBillingProvidersV1200Response list_configured_billing_providers_v1(list_configured_billing_providers_v1_request)
List account-level billing providers

Lists all configured billing providers and their delivery method configurations for your account. Returns provider details, delivery method IDs, and configuration settings needed for mapping individual customer contracts to billing integrations. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_configured_billing_providers_v1_request** | Option<[**ListConfiguredBillingProvidersV1Request**](ListConfiguredBillingProvidersV1Request.md)> | Optional cursor to the next page of results |  |

### Return type

[**models::ListConfiguredBillingProvidersV1200Response**](listConfiguredBillingProviders_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_credit_types_v1

> models::ListCreditTypesV1200Response list_credit_types_v1(limit, next_page)
List pricing units

List all pricing units. All fiat currency types (for example, USD or GBP) will be included, as well as any custom pricing units that were configured. Custom pricing units can be used to charge for usage in a non-fiat pricing unit, for example AI credits.  Note: The USD (cents) pricing unit is 2714e483-4ff1-48e4-9e25-ac732e8f24f2. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |

### Return type

[**models::ListCreditTypesV1200Response**](listCreditTypes_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_up_billing_provider_v1

> models::SetUpBillingProviderV1200Response set_up_billing_provider_v1(set_up_billing_provider_v1_request)
Set up account-level billing provider

Set up account-level configuration for a billing provider. Once configured, individual contracts across customers can be mapped to this configuration using the returned delivery_method_id. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_up_billing_provider_v1_request** | Option<[**SetUpBillingProviderV1Request**](SetUpBillingProviderV1Request.md)> | Billing provider, delivery method and configuration to insert |  |

### Return type

[**models::SetUpBillingProviderV1200Response**](setUpBillingProvider_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsert_anrok_api_token_v1

> models::UpsertAnrokApiTokenV1200Response upsert_anrok_api_token_v1(upsert_anrok_api_token_v1_request)
Upsert Anrok API token

Set the Anrok API token for some specified delivery_method_ids, which can be found in the `/listConfiguredBillingProviders` response. This maps the Anrok key to the appropriate billing entity. These API tokens are only used for Threshold Billing workflows today. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**upsert_anrok_api_token_v1_request** | Option<[**UpsertAnrokApiTokenV1Request**](UpsertAnrokApiTokenV1Request.md)> | Set the Anrok API token for some specified delivery_method_ids |  |

### Return type

[**models::UpsertAnrokApiTokenV1200Response**](upsertAnrokApiToken_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsert_avalara_credentials_v1

> serde_json::Value upsert_avalara_credentials_v1(upsert_avalara_credentials_v1_request)
Upsert Avalara credentials

Set the Avalara credentials for some specified `delivery_method_ids`, which can be found in the `/listConfiguredBillingProviders` response. This maps the Avalara credentials to the appropriate billing entity. These credentials are only used for PLG Invoicing today. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**upsert_avalara_credentials_v1_request** | Option<[**UpsertAvalaraCredentialsV1Request**](UpsertAvalaraCredentialsV1Request.md)> | Set the Avalara credentials for some specified `delivery_method_ids` |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

