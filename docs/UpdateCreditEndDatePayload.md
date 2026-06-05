# UpdateCreditEndDatePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose credit is to be updated | 
**credit_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the commit to update | 
**access_ending_before** | **String** | RFC 3339 timestamp indicating when access to the credit will end and it will no longer be possible to draw it down (exclusive). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


