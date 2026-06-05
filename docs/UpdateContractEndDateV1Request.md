# UpdateContractEndDateV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose contract is to be updated | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract to update | 
**ending_before** | Option<**String**> | RFC 3339 timestamp indicating when the contract will end (exclusive). If not provided, the contract will be updated to be open-ended. | [optional]
**allow_ending_before_finalized_invoice** | Option<**bool**> | If true, allows setting the contract end date earlier than the end_timestamp of existing finalized invoices. Finalized invoices will be unchanged; if you want to incorporate the new end date, you can void and regenerate finalized usage invoices. Defaults to true. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


