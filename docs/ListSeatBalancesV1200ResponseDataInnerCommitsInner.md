# ListSeatBalancesV1200ResponseDataInnerCommitsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** | The commit or credit ID | 
**access_type** | Option<**AccessType**> | Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of usage. `QUANTITY` deducts the number of units used. (enum: SPEND, QUANTITY) | [optional]
**credit_type_id** | Option<**uuid::Uuid**> | The credit type for this commit. Quantity-based commits return the null credit type UUID. | [optional]
**balance** | **f64** | The current balance for this commit for this specific seat | 
**start_date** | **chrono::DateTime<chrono::FixedOffset>** | The datetime when the commit becomes active | 
**end_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The datetime when the commit expires | [optional]
**ledger_entries** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCommitsInnerLedgerEntriesInner>**](ListSeatBalancesV1200ResponseDataInnerCommitsInnerLedgerEntriesInner.md)> | Transaction history for this commit for this seat (only included if include_ledgers=true) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


