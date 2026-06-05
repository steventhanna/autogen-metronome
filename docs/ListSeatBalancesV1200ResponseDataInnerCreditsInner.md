# ListSeatBalancesV1200ResponseDataInnerCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) | The credit ID | 
**balance** | **f64** | The current balance for this credit for this specific seat | 
**start_date** | **String** | The datetime when the credit becomes active | 
**end_date** | Option<**String**> | The datetime when the credit expires | [optional]
**ledger_entries** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCreditsInnerLedgerEntriesInner>**](listSeatBalances_v1_200_response_data_inner_credits_inner_ledger_entries_inner.md)> | Transaction history for this credit for this seat (only included if include_ledgers=true) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


