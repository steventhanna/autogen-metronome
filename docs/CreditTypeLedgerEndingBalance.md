# CreditTypeLedgerEndingBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**excluding_pending** | **f64** | the ending balance, including the balance of all grants that have not expired before the effective_at date and deductions that happened before the effective_at date | 
**including_pending** | **f64** | the excluding_pending balance plus any pending invoice deductions and expirations that will happen by the effective_at date | 
**effective_at** | **String** | the ending_before request parameter (if supplied) or the current billing period's end date | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


