# OverrideTemplateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_at_offset** | [**models::RelativeDate**](RelativeDate.md) |  | 
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**String**> | Overwrites are prioritized over multipliers and tiered overrides. | [optional]
**multiplier** | Option<**f64**> | Required for MULTIPLIER type. Must be >=0. | [optional]
**priority** | Option<**f64**> | Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides. Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered and multiplier overrides are prioritized by their priority value (lowest first). Must be > 0. | [optional]
**overwrite_rate** | Option<[**models::OverwriteRateInput**](OverwriteRateInput.md)> |  | [optional]
**override_specifiers** | [**Vec<models::OverrideSpecifierInput>**](OverrideSpecifierInput.md) | Specifies which products the override will apply to. | 
**tiers** | Option<[**Vec<models::OverrideTierInput>**](OverrideTierInput.md)> | Required for TIERED type. Must have at least one tier. | [optional]
**is_commit_specific** | Option<**bool**> | Indicates whether the override should only apply to commits. Defaults to `false`. If `true`, you can specify relevant commits in `override_specifiers` by passing `commit_ids`. if you do not specify `commit_ids`, then the override will apply when consuming any prepaid or postpaid commit. | [optional]
**target** | Option<**String**> | Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `\"LIST_RATE\"`. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


