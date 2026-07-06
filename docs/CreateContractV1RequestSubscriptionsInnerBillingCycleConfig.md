# CreateContractV1RequestSubscriptionsInnerBillingCycleConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anchor_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The date to anchor the billing cycle to. If omitted, defaults to the contract's usage invoice billing cycle anchor date. | [optional]
**invoice_placement** | Option<**InvoicePlacement**> | Controls whether this subscription consolidates onto usage invoices or gets its own scheduled invoice. Defaults to ON_USAGE_INVOICE if omitted. (enum: ON_SCHEDULED_INVOICE, ON_USAGE_INVOICE, on_scheduled_invoice, on_usage_invoice) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


