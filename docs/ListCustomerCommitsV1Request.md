# ListCustomerCommitsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**commit_id** | Option<**uuid::Uuid**> |  | [optional]
**access_type** | Option<**AccessType**> | Filters commits by how their balances are drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. (enum: SPEND, spend, QUANTITY, quantity) | [optional]
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Include only commits that have access schedules that \"cover\" the provided date | [optional]
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Include only commits that have any access on or after the provided date | [optional]
**effective_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Include only commits that have any access before the provided date (exclusive) | [optional]
**include_contract_commits** | Option<**bool**> | Include commits on the contract level. | [optional]
**include_archived** | Option<**bool**> | Include archived commits and commits from archived contracts. | [optional]
**include_ledgers** | Option<**bool**> | Include commit ledgers in the response. Setting this flag may cause the query to be slower. | [optional]
**include_balance** | Option<**bool**> | Include the balance in the response. Setting this flag may cause the query to be slower. | [optional]
**next_page** | Option<**String**> | The next page token from a previous response. | [optional]
**limit** | Option<**i32**> | The maximum number of commits to return. Defaults to 25. | [optional][default to 25]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


