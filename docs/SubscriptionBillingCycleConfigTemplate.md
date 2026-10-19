# SubscriptionBillingCycleConfigTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_placement** | Option<**InvoicePlacement**> |  (enum: ON_SCHEDULED_INVOICE, ON_USAGE_INVOICE) | [optional]
**billing_cycle_anchor** | Option<**BillingCycleAnchor**> | Which date each subscription materialized from this template anchors its billing cycle to. USAGE_STATEMENT_ANCHOR (the default) tracks the contract's usage statement anchor. (enum: SUBSCRIPTION_START, FIRST_OF_MONTH, CUSTOM_DATE, USAGE_STATEMENT_ANCHOR) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


