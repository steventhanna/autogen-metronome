# GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | Option<**bool**> | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | [optional]
**threshold_amount** | Option<**f64**> | Specify the threshold amount for the contract. Each time the contract's usage hits this amount, a threshold charge will be initiated. | [optional]
**commit** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfigurationCommit**](GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfigurationCommit.md)> |  | [optional]
**payment_gate_config** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig**](GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig.md)> |  | [optional]
**discount_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationDiscountConfiguration**](GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationDiscountConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


