# ListCustomerCreditsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**credit_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**covering_date** | Option<**String**> | Return only credits that have access schedules that \"cover\" the provided date | [optional]
**starting_at** | Option<**String**> | Include only credits that have any access on or after the provided date | [optional]
**effective_before** | Option<**String**> | Include only credits that have any access before the provided date (exclusive) | [optional]
**include_contract_credits** | Option<**bool**> | Include credits on the contract level. | [optional]
**include_archived** | Option<**bool**> | Include archived credits and credits from archived contracts. | [optional]
**include_ledgers** | Option<**bool**> | Include credit ledgers in the response. Setting this flag may cause the query to be slower. | [optional]
**include_balance** | Option<**bool**> | Include the balance in the response. Setting this flag may cause the query to be slower. | [optional]
**next_page** | Option<**String**> | The next page token from a previous response. | [optional]
**limit** | Option<**i32**> | The maximum number of commits to return. Defaults to 25. | [optional][default to 25]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


