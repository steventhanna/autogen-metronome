# ScheduleProServicesInvoiceV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**issued_at** | **String** | The date the invoice is issued | 
**netsuite_invoice_header_start** | Option<**String**> | The start date of the invoice header in Netsuite | [optional]
**netsuite_invoice_header_end** | Option<**String**> | The end date of the invoice header in Netsuite | [optional]
**line_items** | [**Vec<models::ProServiceInvoiceLineItem>**](ProServiceInvoiceLineItem.md) | Each line requires an amount or both unit_price and quantity. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


