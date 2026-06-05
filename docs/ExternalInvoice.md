# ExternalInvoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider_type** | [**models::BillingProviderType**](BillingProviderType.md) |  | 
**invoice_id** | Option<**String**> |  | [optional]
**issued_at_timestamp** | Option<**String**> |  | [optional]
**external_status** | Option<[**models::ExternalInvoiceStatus**](ExternalInvoiceStatus.md)> |  | [optional]
**pdf_url** | Option<**String**> | A URL to the PDF of the invoice, if available from the billing provider. | [optional]
**tax** | Option<[**models::ExternalInvoiceTax**](ExternalInvoice_tax.md)> |  | [optional]
**invoiced_total** | Option<**f64**> | The total amount invoiced, if available from the billing provider. | [optional]
**invoiced_sub_total** | Option<**f64**> | The subtotal amount invoiced, if available from the billing provider. | [optional]
**billing_provider_error** | Option<**String**> | Error message from the billing provider, if available. | [optional]
**external_payment_id** | Option<**String**> | The ID of the payment in the external system, if available. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


