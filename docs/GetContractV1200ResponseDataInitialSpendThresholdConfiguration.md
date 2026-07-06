# GetContractV1200ResponseDataInitialSpendThresholdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **bool** | When set to false, the contract will not be evaluated against the threshold_amount. Toggling to true will result an immediate evaluation, regardless of prior state. | 
**threshold_amount** | **f64** | Specify the threshold amount for the contract. Each time the contract's usage hits this amount, a threshold charge will be initiated. | 
**commit** | [**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationCommit**](GetContractV1200ResponseDataInitialSpendThresholdConfigurationCommit.md) |  | 
**payment_gate_config** | [**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig**](GetContractV1200ResponseDataInitialSpendThresholdConfigurationPaymentGateConfig.md) |  | 
**discount_configuration** | Option<[**models::GetContractV1200ResponseDataInitialSpendThresholdConfigurationDiscountConfiguration**](GetContractV1200ResponseDataInitialSpendThresholdConfigurationDiscountConfiguration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


