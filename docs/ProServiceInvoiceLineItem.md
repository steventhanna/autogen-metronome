# ProServiceInvoiceLineItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**professional_service_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**amendment_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | If the professional_service_id was added on an amendment, this is required. | [optional]
**unit_price** | Option<**f64**> | If specified, this overrides the unit price on the pro service term. Must also provide quantity (but not amount) if providing unit_price. | [optional]
**quantity** | Option<**f64**> | Quantity for the charge. Will be multiplied by unit_price to determine the amount. | [optional]
**amount** | Option<**f64**> | Amount for the term on the new invoice. | [optional]
**netsuite_invoice_billing_start** | Option<**String**> | The start date for the billing period on the invoice. | [optional]
**netsuite_invoice_billing_end** | Option<**String**> | The end date for the billing period on the invoice. | [optional]
**metadata** | Option<**String**> | For client use. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


