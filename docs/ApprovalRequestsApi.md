# \ApprovalRequestsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_approval_request_v1**](ApprovalRequestsApi.md#approve_approval_request_v1) | **POST** /v1/approval_requests/{id}/approve | Approve a pending approval request
[**deny_approval_request_v1**](ApprovalRequestsApi.md#deny_approval_request_v1) | **POST** /v1/approval_requests/{id}/deny | Deny a pending approval request
[**get_approval_request_v1**](ApprovalRequestsApi.md#get_approval_request_v1) | **GET** /v1/approval_requests/{id} | Get an approval request
[**list_approval_requests_v1**](ApprovalRequestsApi.md#list_approval_requests_v1) | **GET** /v1/approval_requests | List approval requests
[**submit_approval_requests_v1**](ApprovalRequestsApi.md#submit_approval_requests_v1) | **POST** /v1/approval_requests | Submit a write operation for human approval



## approve_approval_request_v1

> models::SubmitApprovalRequestsV1200Response approve_approval_request_v1(id)
Approve a pending approval request

Approves a pending approval request, allowing the queued operation to proceed.  Once approved, the original write operation will be executed automatically and the approval request status will transition to reflect the execution result. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | The ID of the approval request to approve. | [required] |

### Return type

[**models::SubmitApprovalRequestsV1200Response**](submitApprovalRequests_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deny_approval_request_v1

> models::SubmitApprovalRequestsV1200Response deny_approval_request_v1(id)
Deny a pending approval request

Denies a pending approval request, preventing the queued operation from executing.  Once denied, the approval request is closed and the original write operation will not be performed. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | The ID of the approval request to deny. | [required] |

### Return type

[**models::SubmitApprovalRequestsV1200Response**](submitApprovalRequests_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_approval_request_v1

> models::SubmitApprovalRequestsV1200Response get_approval_request_v1(id)
Get an approval request

Retrieves the details of a single approval request by its ID. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | The ID of the approval request to retrieve. | [required] |

### Return type

[**models::SubmitApprovalRequestsV1200Response**](submitApprovalRequests_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_approval_requests_v1

> models::ListApprovalRequestsV1200Response list_approval_requests_v1(status, limit, next_page, created_before, created_after)
List approval requests

Lists all approval requests submitted by agentic tokens for your account. Returns request details including status, token name, approval URL, and the original request payload. Use status and date filters to narrow results. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**status** | Option<**String**> | Filter by approval request status. |  |
**limit** | Option<**i32**> | Number of items to return per page. Defaults to 20. |  |
**next_page** | Option<**String**> | Cursor for pagination. Use the value from the previous response's next_page field. |  |
**created_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Filter to requests created before this timestamp (exclusive). |  |
**created_after** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Filter to requests created on or after this timestamp (inclusive). |  |

### Return type

[**models::ListApprovalRequestsV1200Response**](listApprovalRequests_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submit_approval_requests_v1

> models::SubmitApprovalRequestsV1200Response submit_approval_requests_v1(submit_approval_requests_v1_request)
Submit a write operation for human approval

Queues a write operation for human review when an agentic token is in use.  When an agent attempts a write operation (e.g. `POST /v1/contracts/create`) using an agentic token, the server returns a `403 AgenticMutationBlocked` error with a pointer to this endpoint. The agent should then call this endpoint with the original request details so a human can review and approve the action.  On success, a pending approval request is created and the response includes an `approval_url` linking to the Approval Dashboard where a human can review, approve, or reject the request. Once approved, the original operation is executed automatically and the dashboard reflects the completed status.  Agents should surface the `approval_url` to the human user (e.g. via chat message or UI link) so they can navigate directly to the approval dashboard to review the request. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**submit_approval_requests_v1_request** | [**SubmitApprovalRequestsV1Request**](SubmitApprovalRequestsV1Request.md) |  | [required] |

### Return type

[**models::SubmitApprovalRequestsV1200Response**](submitApprovalRequests_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

