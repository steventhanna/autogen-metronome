# \NamedSchedulesApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contract_named_schedule_v1**](NamedSchedulesApi.md#get_contract_named_schedule_v1) | **POST** /v1/contracts/getNamedSchedule | Get a contract's named schedule
[**get_customer_named_schedule_v1**](NamedSchedulesApi.md#get_customer_named_schedule_v1) | **POST** /v1/customers/getNamedSchedule | Get a customer's named schedule
[**get_rate_card_named_schedule_v1**](NamedSchedulesApi.md#get_rate_card_named_schedule_v1) | **POST** /v1/contract-pricing/rate-cards/getNamedSchedule | Get a rate card's named schedule
[**list_contracts_named_schedules_v1**](NamedSchedulesApi.md#list_contracts_named_schedules_v1) | **POST** /v1/contracts/listNamedSchedules | List contract named schedules
[**update_contract_named_schedule_v1**](NamedSchedulesApi.md#update_contract_named_schedule_v1) | **POST** /v1/contracts/updateNamedSchedule | Update a contract's named schedule
[**update_customer_named_schedule_v1**](NamedSchedulesApi.md#update_customer_named_schedule_v1) | **POST** /v1/customers/updateNamedSchedule | Update a customer's named schedule
[**update_rate_card_named_schedule_v1**](NamedSchedulesApi.md#update_rate_card_named_schedule_v1) | **POST** /v1/contract-pricing/rate-cards/updateNamedSchedule | Update a rate card's named schedule



## get_contract_named_schedule_v1

> models::GetCustomerNamedScheduleV1200Response get_contract_named_schedule_v1(get_contract_named_schedule_v1_request)
Get a contract's named schedule

Get a named schedule for the given contract. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_contract_named_schedule_v1_request** | Option<[**GetContractNamedScheduleV1Request**](GetContractNamedScheduleV1Request.md)> | Which customer, contract, schedule name, and date to retrieve. |  |

### Return type

[**models::GetCustomerNamedScheduleV1200Response**](getCustomerNamedSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customer_named_schedule_v1

> models::GetCustomerNamedScheduleV1200Response get_customer_named_schedule_v1(get_customer_named_schedule_v1_request)
Get a customer's named schedule

Get a named schedule for the given customer. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_customer_named_schedule_v1_request** | Option<[**GetCustomerNamedScheduleV1Request**](GetCustomerNamedScheduleV1Request.md)> | Which customer, schedule name, and date to retrieve. |  |

### Return type

[**models::GetCustomerNamedScheduleV1200Response**](getCustomerNamedSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_rate_card_named_schedule_v1

> models::GetCustomerNamedScheduleV1200Response get_rate_card_named_schedule_v1(get_rate_card_named_schedule_v1_request)
Get a rate card's named schedule

Get a named schedule for the given rate card. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_rate_card_named_schedule_v1_request** | Option<[**GetRateCardNamedScheduleV1Request**](GetRateCardNamedScheduleV1Request.md)> | Which rate card, schedule name, and date to retrieve. |  |

### Return type

[**models::GetCustomerNamedScheduleV1200Response**](getCustomerNamedSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_contracts_named_schedules_v1

> models::ListContractsNamedSchedulesV1200Response list_contracts_named_schedules_v1(list_contracts_named_schedules_v1_request)
List contract named schedules

List contract-level named schedules for a customer, optionally scoped to a single contract.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_contracts_named_schedules_v1_request** | Option<[**ListContractsNamedSchedulesV1Request**](ListContractsNamedSchedulesV1Request.md)> | Specify which customer and optional filters to use when listing contract named schedules. |  |

### Return type

[**models::ListContractsNamedSchedulesV1200Response**](listContractsNamedSchedules_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_contract_named_schedule_v1

> update_contract_named_schedule_v1(update_contract_named_schedule_v1_request)
Update a contract's named schedule

Update a named schedule for the given contract. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_contract_named_schedule_v1_request** | Option<[**UpdateContractNamedScheduleV1Request**](UpdateContractNamedScheduleV1Request.md)> | The customer, contract, schedule name, date range, and value to set. |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_customer_named_schedule_v1

> update_customer_named_schedule_v1(update_customer_named_schedule_v1_request)
Update a customer's named schedule

Update a named schedule for the given customer. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_customer_named_schedule_v1_request** | Option<[**UpdateCustomerNamedScheduleV1Request**](UpdateCustomerNamedScheduleV1Request.md)> | The customer, schedule name, date range, and value to set. |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_rate_card_named_schedule_v1

> update_rate_card_named_schedule_v1(update_rate_card_named_schedule_v1_request)
Update a rate card's named schedule

Update a named schedule for the given rate card. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_rate_card_named_schedule_v1_request** | Option<[**UpdateRateCardNamedScheduleV1Request**](UpdateRateCardNamedScheduleV1Request.md)> | The rate card, schedule name, date range, and value to set. |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

