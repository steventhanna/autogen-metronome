# GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | Option<**bool**> | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | [optional]
**threshold_amount** | Option<**f64**> | Specify the threshold amount for the contract. Each time the contract's usage hits this amount, a threshold charge will be initiated. | [optional]
**commit** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateSpendThresholdConfigurationCommit**](getContractEditHistory_v2_200_response_data_inner_update_spend_threshold_configuration_commit.md)> |  | [optional]
**payment_gate_config** | Option<[**models::GetContractV2200ResponseDataSpendThresholdConfigurationPaymentGateConfig**](getContract_v2_200_response_data_spend_threshold_configuration_payment_gate_config.md)> |  | [optional]
**discount_configuration** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationDiscountConfiguration**](getContractEditHistory_v2_200_response_data_inner_update_prepaid_balance_threshold_configuration_discount_configuration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


