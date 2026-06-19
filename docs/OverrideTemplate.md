# OverrideTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**product** | Option<[**models::SubscriptionRateProduct**](SubscriptionRateProduct.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | [**Vec<models::OverrideSpecifierTemplate>**](OverrideSpecifierTemplate.md) |  | 
**starting_at_offset** | [**models::RelativeDate**](RelativeDate.md) |  | 
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> |  (enum: OVERWRITE, MULTIPLIER, TIERED) | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::OverwriteRate**](OverwriteRate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::OverrideTier>**](OverrideTier.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**Target**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


