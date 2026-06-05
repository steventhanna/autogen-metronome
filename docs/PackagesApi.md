# \PackagesApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_package_v1**](PackagesApi.md#archive_package_v1) | **POST** /v1/packages/archive | Archive a package
[**get_package_v1**](PackagesApi.md#get_package_v1) | **POST** /v1/packages/get | Get a package



## archive_package_v1

> models::ArchiveAlertV1200Response archive_package_v1(archive_package_v1_request)
Archive a package

Archive a package. Archived packages cannot be used to create new contracts. However, existing contracts associated with the package will continue to function as normal. Once you archive a package, you can still retrieve it in the UI and API, but you cannot unarchive it. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_package_v1_request** | Option<[**ArchivePackageV1Request**](ArchivePackageV1Request.md)> |  |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_package_v1

> models::GetPackageV1200Response get_package_v1(get_package_v1_request)
Get a package

Gets the details for a specific package, including name, aliases, duration, and terms. Use this endpoint to understand a package’s alias schedule, or display a specific package’s details to end customers. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_package_v1_request** | Option<[**GetPackageV1Request**](GetPackageV1Request.md)> | Package ID |  |

### Return type

[**models::GetPackageV1200Response**](getPackage_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

