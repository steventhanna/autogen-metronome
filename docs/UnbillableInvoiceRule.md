# UnbillableInvoiceRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | **InvoiceType** | The type of invoice this rule applies to. (enum: USAGE, SCHEDULED, usage, scheduled) | 
**fiat_credit_type_id** | Option<**uuid::Uuid**> | Restricts the rule to invoices in this fiat currency. Omit for a catch-all rule that applies to every currency of the `invoice_type`. Required when `max_amount` is set. | [optional]
**max_amount** | Option<**f64**> | A positive decimal, in the units of `fiat_credit_type_id`. Only invoices whose total is at or below this amount are suppressed; a higher total is still sent to the billing provider. When omitted, every matching invoice is suppressed regardless of amount. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


