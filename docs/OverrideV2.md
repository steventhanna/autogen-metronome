# OverrideV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**product** | Option<[**models::SubscriptionRateProduct**](SubscriptionRateProduct.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | Option<[**Vec<models::OverrideSpecifierV2>**](OverrideSpecifierV2.md)> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> |  (enum: OVERWRITE, MULTIPLIER, TIERED) | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::OverwriteRateV2**](OverwriteRateV2.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::OverrideTier>**](OverrideTier.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**Target**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


