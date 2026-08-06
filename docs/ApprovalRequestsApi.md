# \ApprovalRequestsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_approval_requests_v1**](ApprovalRequestsApi.md#submit_approval_requests_v1) | **POST** /v1/approval_requests/submit | Submit a write operation for human approval



## submit_approval_requests_v1

> models::SubmitApprovalRequestsV1200Response submit_approval_requests_v1(submit_approval_requests_v1_request)
Submit a write operation for human approval

Queues a write operation for human review when an agentic token is in use.  When an agent attempts a write operation (e.g. `POST /v1/contracts/create`) using an agentic token, the server returns a `403 AgenticMutationBlocked` error with a pointer to this endpoint. The agent should then call this endpoint with the original request details so a human can review and approve the action.  On success, a pending approval request is created and the response includes an `approval_url` linking to the Approval Dashboard where a human can review, approve, or reject the request. Once approved, the original operation is executed automatically and the dashboard reflects the completed status. 

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

