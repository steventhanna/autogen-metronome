# PrepaidBalanceThresholdConfigurationV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **bool** | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | 
**threshold_amount** | **f64** | Specify the threshold amount for the contract. Each time the contract's balance lowers to this amount, a threshold charge will be initiated. | 
**recharge_to_amount** | **f64** | Specify the amount the balance should be recharged to. | 
**custom_credit_type_id** | Option<**uuid::Uuid**> | If provided, the threshold, recharge-to amount, and the resulting threshold commit amount will be in terms of this credit type instead of the fiat currency. | [optional]
**commit** | [**models::PrepaidBalanceThresholdCommitV2**](PrepaidBalanceThresholdCommitV2.md) |  | 
**payment_gate_config** | [**models::PaymentGateConfigV2**](PaymentGateConfigV2.md) |  | 
**discount_configuration** | Option<[**models::DiscountConfiguration**](DiscountConfiguration.md)> |  | [optional]
**threshold_balance_specifiers** | Option<[**Vec<models::ThresholdBalanceSpecifierV2>**](ThresholdBalanceSpecifierV2.md)> | Determines which balances are excluded from remaining balance calculation for threshold billing. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


