# GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | Option<**bool**> | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | [optional]
**threshold_amount** | Option<**f64**> | Specify the threshold amount for the contract. Each time the contract's balance lowers to this amount, a threshold charge will be initiated. | [optional]
**recharge_to_amount** | Option<**f64**> | Specify the amount the balance should be recharged to. | [optional]
**custom_credit_type_id** | Option<**uuid::Uuid**> | If provided, the threshold, recharge-to amount, and the resulting threshold commit amount will be in terms of this credit type instead of the fiat currency. | [optional]
**commit** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationCommit**](GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationCommit.md)> |  | [optional]
**payment_gate_config** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig**](GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig.md)> |  | [optional]
**discount_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationDiscountConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationDiscountConfiguration.md)> |  | [optional]
**threshold_balance_specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationThresholdBalanceSpecifiersInner>**](GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationThresholdBalanceSpecifiersInner.md)> | Determines which balances are excluded from remaining balance calculation for threshold billing. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


