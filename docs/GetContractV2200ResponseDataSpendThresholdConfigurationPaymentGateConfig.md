# GetContractV2200ResponseDataSpendThresholdConfigurationPaymentGateConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_gate_type** | **String** | Gate access to the commit balance based on successful collection of payment. Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to facilitate payment using your own payment integration. Select NONE if you do not wish to payment gate the commit balance. | 
**tax_type** | Option<**String**> | Stripe tax is only supported for Stripe payment gateway. Select NONE if you do not wish  Metronome to calculate tax on your behalf. Leaving this field blank will default to NONE. | [optional]
**stripe_config** | Option<[**models::GetContractV2200ResponseDataSpendThresholdConfigurationPaymentGateConfigStripeConfig**](getContract_v2_200_response_data_spend_threshold_configuration_payment_gate_config_stripe_config.md)> |  | [optional]
**precalculated_tax_config** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfigPrecalculatedTaxConfig**](getContract_v1_200_response_data_initial_spend_threshold_configuration_payment_gate_config_precalculated_tax_config.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


