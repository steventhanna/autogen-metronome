# UpdateCommitEndDatePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose commit is to be updated | 
**commit_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the commit to update. Only supports \"PREPAID\" commits. | 
**access_ending_before** | Option<**String**> | RFC 3339 timestamp indicating when access to the commit will end and it will no longer be possible to draw it down (exclusive). If not provided, the access will not be updated. | [optional]
**invoices_ending_before** | Option<**String**> | RFC 3339 timestamp indicating when the commit will stop being invoiced (exclusive). If not provided, the invoice schedule will not be updated. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


