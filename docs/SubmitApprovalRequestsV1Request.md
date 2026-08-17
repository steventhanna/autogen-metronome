# SubmitApprovalRequestsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | 
**method** | **Method** | The HTTP method of the operation being requested. (enum: POST, PUT, PATCH, DELETE) | 
**path** | **String** | The API path of the operation being requested (e.g. /v1/contracts/create). | 
**body** | **std::collections::HashMap<String, serde_json::Value>** | The full request body of the operation being requested. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


