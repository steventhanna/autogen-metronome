# \DefaultApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_packages_v1**](DefaultApi.md#list_packages_v1) | **POST** /v1/packages/list | List all packages



## list_packages_v1

> models::ListPackagesV1200Response list_packages_v1(limit, next_page, list_packages_v1_request)
List all packages

Lists all packages with details including name, aliases, duration, and terms. To view contracts on a specific package, use the `listContractsOnPackage` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**list_packages_v1_request** | Option<[**ListPackagesV1Request**](ListPackagesV1Request.md)> |  |  |

### Return type

[**models::ListPackagesV1200Response**](listPackages_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

