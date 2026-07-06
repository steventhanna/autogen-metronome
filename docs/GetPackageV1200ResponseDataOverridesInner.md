# GetPackageV1200ResponseDataOverridesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**product** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](GetContractV1200ResponseDataInitialCommitsInnerProduct.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | [**Vec<models::GetPackageV1200ResponseDataOverridesInnerOverrideSpecifiersInner>**](GetPackageV1200ResponseDataOverridesInnerOverrideSpecifiersInner.md) |  | 
**starting_at_offset** | [**models::CreatePackageV1RequestDuration**](CreatePackageV1RequestDuration.md) |  | 
**duration** | Option<[**models::CreatePackageV1RequestDuration**](CreatePackageV1RequestDuration.md)> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> |  (enum: OVERWRITE, MULTIPLIER, TIERED) | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::GetContractV1200ResponseDataInitialOverridesInnerOverwriteRate**](GetContractV1200ResponseDataInitialOverridesInnerOverwriteRate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner>**](GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**Target**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


