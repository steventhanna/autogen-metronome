# GetContractV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**contract_id** | **uuid::Uuid** |  | 
**include_ledgers** | Option<**bool**> | Include commit ledgers in the response. Setting this flag may cause the query to be slower. | [optional]
**include_balance** | Option<**bool**> | Include the balance of credits and commits in the response. Setting this flag may cause the query to be slower. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


