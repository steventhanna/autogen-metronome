# UpdateInvoiceIssueDateV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the invoice to update. The invoice must still be in DRAFT status. | 
**issue_date** | **String** | RFC 3339 timestamp. This will be the new issue date of the invoice. It must not be after the end date of the contract. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


