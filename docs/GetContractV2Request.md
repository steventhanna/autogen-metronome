# GetContractV2Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**include_ledgers** | Option<**bool**> | Include commit/credit ledgers in the response. Setting this flag may cause the query to be slower. Cannot be used with as_of_date parameter. | [optional]
**as_of_date** | Option<**String**> | Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used with include_ledgers parameter. | [optional]
**include_balance** | Option<**bool**> | Include the balance of credits and commits in the response. Setting this flag may cause the query to be slower. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


