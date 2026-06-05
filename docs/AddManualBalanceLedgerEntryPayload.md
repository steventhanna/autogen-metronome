# AddManualBalanceLedgerEntryPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose balance is to be updated. | 
**contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the contract to update. Leave blank to update a customer level balance. | [optional]
**id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the balance (commit or credit) to update. | 
**segment_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the segment to update. | 
**amount** | **f64** | Amount to add to the segment. A negative number will draw down from the balance. | 
**per_group_amounts** | Option<**std::collections::HashMap<String, f64>**> | If using individually configured commits/credits attached to seat managed subscriptions, the amount to add for each seat. Must sum to total amount. | [optional]
**reason** | **String** | Reason for the manual adjustment. This will be displayed in the ledger. | 
**timestamp** | Option<**String**> | RFC 3339 timestamp indicating when the manual adjustment takes place. If not provided, it will default to the start of the segment. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


