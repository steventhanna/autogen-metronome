# CreateContractV1RequestPackageCustomizationsAddOverridesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp indicating when the override will start applying (inclusive) | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp indicating when the override will stop applying (exclusive) | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> | Overwrites are prioritized over multipliers and tiered overrides. (enum: OVERWRITE, overwrite, MULTIPLIER, multiplier, TIERED, tiered) | [optional]
**multiplier** | Option<**f64**> | Required for MULTIPLIER type. Must be >=0. | [optional]
**priority** | Option<**f64**> | Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides. Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered and multiplier overrides are prioritized by their priority value (lowest first). Must be > 0. | [optional]
**overwrite_rate** | Option<[**models::CreateContractV1RequestPackageCustomizationsAddOverridesInnerOverwriteRate**](CreateContractV1RequestPackageCustomizationsAddOverridesInnerOverwriteRate.md)> |  | [optional]
**product_id** | Option<**uuid::Uuid**> | ID of the product whose rate is being overridden. Cannot be used in conjunction with override_specifiers. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | tags identifying products whose rates are being overridden. Cannot be used in conjunction with override_specifiers. | [optional]
**override_specifiers** | Option<[**Vec<models::CreateContractV1RequestPackageCustomizationsAddOverridesInnerOverrideSpecifiersInner>**](CreateContractV1RequestPackageCustomizationsAddOverridesInnerOverrideSpecifiersInner.md)> | Cannot be used in conjunction with product_id or applicable_product_tags. If provided, the override will apply to all products with the specified specifiers. | [optional]
**tiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner>**](GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner.md)> | Required for TIERED type. Must have at least one tier. | [optional]
**is_commit_specific** | Option<**bool**> | Indicates whether the override should only apply to commits. Defaults to `false`. If `true` you can specify relevant commits in `override_specifiers` by passing `commit_ids`, `recurring_commit_ids`, or `any_commit_or_credit_ids`.  If you do not specify any of these fields, the override will apply when consuming any prepaid commit, postpaid commit, or credit | [optional]
**target** | Option<**Target**> | Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `\"LIST_RATE\"`. (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


