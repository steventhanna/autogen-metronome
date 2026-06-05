# CommitRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_type** | **String** |  | 
**price** | Option<**f64**> | Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**tiers** | Option<[**Vec<models::Tier>**](Tier.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::MinimumConfig**](MinimumConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


