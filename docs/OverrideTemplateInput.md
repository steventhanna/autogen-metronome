# OverrideTemplateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_at_offset** | [**models::RelativeDate**](RelativeDate.md) |  | 
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> | Overwrites are prioritized over multipliers and tiered overrides. (enum: OVERWRITE, overwrite, MULTIPLIER, multiplier, TIERED, tiered) | [optional]
**multiplier** | Option<**f64**> | Required for MULTIPLIER type. Must be >=0. | [optional]
**priority** | Option<**f64**> | Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides. Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered and multiplier overrides are prioritized by their priority value (lowest first). Must be > 0. | [optional]
**overwrite_rate** | Option<[**models::OverwriteRateInput**](OverwriteRateInput.md)> |  | [optional]
**override_specifiers** | [**Vec<models::OverrideSpecifierInput>**](OverrideSpecifierInput.md) | Specifies which products the override will apply to. | 
**tiers** | Option<[**Vec<models::OverrideTierInput>**](OverrideTierInput.md)> | Required for TIERED type. Must have at least one tier. | [optional]
**is_commit_specific** | Option<**bool**> | Indicates whether the override should only apply to commits. Defaults to `false`. If `true` you can specify relevant commits in `override_specifiers` by passing `commit_ids`, `recurring_commit_ids`, or `any_commit_or_credit_ids`.  If you do not specify any of these fields, the override will apply when consuming any prepaid commit, postpaid commit, or credit | [optional]
**target** | Option<**Target**> | Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `\"LIST_RATE\"`. (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


