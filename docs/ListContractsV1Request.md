# ListContractsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**include_ledgers** | Option<**bool**> | Include commit ledgers in the response. Setting this flag may cause the query to be slower. | [optional]
**include_balance** | Option<**bool**> | Include the balance of credits and commits in the response. Setting this flag may cause the query to be slower. | [optional]
**include_archived** | Option<**bool**> | Include archived contracts in the response | [optional]
**starting_at** | Option<**String**> | Optional RFC 3339 timestamp. If provided, the response will include only contracts where effective_at is on or after the provided date.  This cannot be provided if the covering_date filter is provided. | [optional]
**covering_date** | Option<**String**> | Optional RFC 3339 timestamp. If provided, the response will include only contracts effective on the provided date.  This cannot be provided if the starting_at filter is provided. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


