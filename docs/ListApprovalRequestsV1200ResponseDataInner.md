# ListApprovalRequestsV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**status** | **Status** |  (enum: pending_approval, approved, denied, execution_succeeded, execution_error, expired) | 
**token_name** | **String** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**expires_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 
**approval_url** | **String** |  | 
**reviewed_by** | Option<**String**> |  | 
**reviewed_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 
**completed_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | 
**approval_request_payload** | [**models::ListApprovalRequestsV1200ResponseDataInnerApprovalRequestPayload**](ListApprovalRequestsV1200ResponseDataInnerApprovalRequestPayload.md) |  | 
**response** | [**models::ListApprovalRequestsV1200ResponseDataInnerResponse**](ListApprovalRequestsV1200ResponseDataInnerResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


