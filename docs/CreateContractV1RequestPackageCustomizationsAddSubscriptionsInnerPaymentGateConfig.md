# CreateContractV1RequestPackageCustomizationsAddSubscriptionsInnerPaymentGateConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_gate_type** | **PaymentGateType** | Gate access to the subscription based on successful collection of payment. Select STRIPE for Metronome to facilitate payment via Stripe. (enum: STRIPE, stripe) | 
**tax_type** | Option<**TaxType**> | Stripe tax is only supported for Stripe payment gateway. Select NONE if you do not wish Metronome to calculate tax on your behalf. Leaving this field blank will default to NONE. (enum: NONE, STRIPE, none, stripe) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


