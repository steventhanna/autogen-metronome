# OverwriteRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_type** | **RateType** |  (enum: FLAT, flat, PERCENTAGE, percentage, SUBSCRIPTION, subscription, TIERED, tiered, TIERED_PERCENTAGE, tiered_percentage, CUSTOM, custom) | 
**price** | Option<**f64**> | Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::Tier>**](Tier.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::MinimumConfig**](MinimumConfig.md)> |  | [optional]
**custom_rate** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**credit_type** | Option<[**models::CreditType**](CreditType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


