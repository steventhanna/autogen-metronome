# CreditLedgerEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **f64** | an amount representing the change to the customer's credit balance | 
**reason** | **String** |  | 
**running_balance** | **f64** | the running balance for this credit type at the time of the ledger entry, including all preceding charges | 
**effective_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**credit_grant_id** | **uuid::Uuid** | the credit grant this entry is related to | 
**invoice_id** | Option<**uuid::Uuid**> | if this entry is a deduction, the Metronome ID of the invoice where the credit deduction was consumed; if this entry is a grant, the Metronome ID of the invoice where the grant's paid_amount was charged | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


