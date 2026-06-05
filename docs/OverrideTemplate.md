# OverrideTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**product** | Option<[**models::SubscriptionRateProduct**](SubscriptionRate_product.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | [**Vec<models::OverrideSpecifierTemplate>**](OverrideSpecifierTemplate.md) |  | 
**starting_at_offset** | [**models::RelativeDate**](RelativeDate.md) |  | 
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::OverwriteRate**](OverwriteRate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::OverrideTier>**](OverrideTier.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


