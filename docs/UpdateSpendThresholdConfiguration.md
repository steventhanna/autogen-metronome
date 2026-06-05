# UpdateSpendThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | Option<**bool**> | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | [optional]
**threshold_amount** | Option<**f64**> | Specify the threshold amount for the contract. Each time the contract's usage hits this amount, a threshold charge will be initiated. | [optional]
**commit** | Option<[**models::UpdateSpendThresholdCommit**](UpdateSpendThresholdCommit.md)> |  | [optional]
**payment_gate_config** | Option<[**models::PaymentGateConfigV2**](PaymentGateConfigV2.md)> |  | [optional]
**discount_configuration** | Option<[**models::UpdateDiscountConfiguration**](UpdateDiscountConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


