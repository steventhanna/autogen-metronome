# MoveToHistoryV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose commits are being moved to historical | 
**contract_id** | **uuid::Uuid** | ID of the contract containing the commits | 
**commit_ids** | **Vec<uuid::Uuid>** | IDs of the commits to move to historical | 
**dry_run** | Option<**bool**> | If true, previews which commits would be moved to historical and which would be skipped, without making changes | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


