# PaymentGateConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_gate_type** | **PaymentGateType** | Gate access to the commit balance based on successful collection of payment. Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to facilitate payment using your own payment integration. Select NONE if you do not wish to payment gate the commit balance. (enum: NONE, STRIPE, EXTERNAL) | 
**tax_type** | Option<**TaxType**> | Stripe tax is only supported for Stripe payment gateway. Select NONE if you do not wish Metronome to calculate tax on your behalf. Leaving this field blank will default to NONE. (enum: NONE, STRIPE, ANROK, PRECALCULATED) | [optional]
**stripe_config** | Option<[**models::PaymentGateConfigStripeConfig**](PaymentGateConfigStripeConfig.md)> |  | [optional]
**precalculated_tax_config** | Option<[**models::PaymentGateConfigPrecalculatedTaxConfig**](PaymentGateConfigPrecalculatedTaxConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


