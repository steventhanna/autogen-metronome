# CreatePackageV1RequestSubscriptionsInnerBillingCycleConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_placement** | Option<**InvoicePlacement**> | Controls whether subscriptions consolidate onto usage invoices. Defaults to ON_USAGE_INVOICE if omitted. (enum: ON_SCHEDULED_INVOICE, ON_USAGE_INVOICE, on_scheduled_invoice, on_usage_invoice) | [optional]
**billing_cycle_anchor** | Option<**BillingCycleAnchor**> | Controls which date each subscription materialized from this template anchors its billing cycle to. CUSTOM_DATE requires a subscription_anchor_date supplied per contract via package customizations. Defaults to USAGE_STATEMENT_ANCHOR (the contract's usage statement anchor) if omitted. (enum: SUBSCRIPTION_START, FIRST_OF_MONTH, CUSTOM_DATE, USAGE_STATEMENT_ANCHOR, subscription_start, first_of_month, custom_date, usage_statement_anchor) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


