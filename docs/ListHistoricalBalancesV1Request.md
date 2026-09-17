# ListHistoricalBalancesV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**contract_id** | Option<**uuid::Uuid**> | Return only historical balances from this contract. | [optional]
**id** | Option<**uuid::Uuid**> | Return only the historical balance with this ID. | [optional]
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Return only historical balances with access schedules that cover this date. | [optional]
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Return only historical balances with any access on or after this date. | [optional]
**effective_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Return only historical balances with any access before this date (exclusive). | [optional]
**retired_after** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Return only balances that became historical at or after this date. | [optional]
**retired_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Return only balances that became historical before this date (exclusive). | [optional]
**include_ledgers** | Option<**bool**> | Include ledgers in the response. Setting this flag may cause the query to be slower. | [optional][default to false]
**next_page** | Option<**String**> | The next page token from a previous response. | [optional]
**limit** | Option<**i32**> | The maximum number of historical balances to return. Defaults to 25. | [optional][default to 25]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


