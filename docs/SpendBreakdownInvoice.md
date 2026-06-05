# SpendBreakdownInvoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**credit_type** | [**models::CreditType**](CreditType.md) |  | 
**line_items** | [**Vec<models::InvoiceLineItem>**](InvoiceLineItem.md) |  | 
**start_timestamp** | Option<**String**> | Beginning of the usage period this invoice covers (UTC) | [optional]
**end_timestamp** | Option<**String**> | End of the usage period this invoice covers (UTC) | [optional]
**issued_at** | Option<**String**> | When the invoice was issued (UTC) | [optional]
**created_at** | Option<**String**> | When the invoice was created (UTC). This field is present for correction invoices only. | [optional]
**status** | **String** |  | 
**r#type** | **String** |  | 
**contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**breakdown_start_timestamp** | **String** |  | 
**breakdown_end_timestamp** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


