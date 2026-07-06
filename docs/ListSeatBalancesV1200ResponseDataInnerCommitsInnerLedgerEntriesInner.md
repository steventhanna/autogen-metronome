# ListSeatBalancesV1200ResponseDataInnerCommitsInnerLedgerEntriesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | **Type** | Commit ledger type (enum: PREPAID_COMMIT_SEGMENT_START, PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION, PREPAID_COMMIT_ROLLOVER, PREPAID_COMMIT_EXPIRATION, PREPAID_COMMIT_CANCELED, PREPAID_COMMIT_CREDITED, PREPAID_COMMIT_MANUAL, PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT) | 
**amount** | **f64** | Amount of the ledger entry | 
**timestamp** | **chrono::DateTime<chrono::FixedOffset>** | The datetime when the ledger is created | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


