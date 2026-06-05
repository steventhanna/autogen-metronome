# SeatCommitBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) | The commit or credit ID | 
**balance** | **f64** | The current balance for this commit for this specific seat | 
**start_date** | **String** | The datetime when the commit becomes active | 
**end_date** | Option<**String**> | The datetime when the commit expires | [optional]
**ledger_entries** | Option<[**Vec<models::SeatBalanceCommitLedger>**](SeatBalanceCommitLedger.md)> | Transaction history for this commit for this seat (only included if include_ledgers=true) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


