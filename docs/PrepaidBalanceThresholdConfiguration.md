# PrepaidBalanceThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **bool** | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | 
**threshold_amount** | **f64** | Specify the threshold amount for the contract. Each time the contract's prepaid balance lowers to this amount, a threshold charge will be initiated. | 
**recharge_to_amount** | **f64** | Specify the amount the balance should be recharged to. | 
**custom_credit_type_id** | Option<**uuid::Uuid**> | If provided, the threshold, recharge-to amount, and the resulting threshold commit amount will be in terms of this credit type instead of the fiat currency. | [optional]
**commit** | [**models::PrepaidBalanceThresholdCommit**](PrepaidBalanceThresholdCommit.md) |  | 
**payment_gate_config** | [**models::PaymentGateConfig**](PaymentGateConfig.md) |  | 
**discount_configuration** | Option<[**models::DiscountConfiguration**](DiscountConfiguration.md)> |  | [optional]
**threshold_balance_specifiers** | Option<[**Vec<models::ThresholdBalanceSpecifier>**](ThresholdBalanceSpecifier.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


