# ArchiveContractPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose contract is to be archived | 
**contract_id** | **uuid::Uuid** | ID of the contract to archive | 
**void_invoices** | **bool** | If false, the existing finalized invoices will remain after the contract is archived. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


