# OverrideV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**created_at** | **String** |  | 
**product** | Option<[**models::SubscriptionRateProduct**](SubscriptionRate_product.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | Option<[**Vec<models::OverrideSpecifierV2>**](OverrideSpecifierV2.md)> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::OverwriteRateV2**](OverwriteRateV2.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::OverrideTier>**](OverrideTier.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


