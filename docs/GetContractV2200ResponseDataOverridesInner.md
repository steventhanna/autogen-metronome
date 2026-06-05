# GetContractV2200ResponseDataOverridesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**created_at** | **String** |  | 
**product** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | Option<[**Vec<models::GetContractV2200ResponseDataOverridesInnerOverrideSpecifiersInner>**](getContract_v2_200_response_data_overrides_inner_override_specifiers_inner.md)> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::GetContractV2200ResponseDataOverridesInnerOverwriteRate**](getContract_v2_200_response_data_overrides_inner_overwrite_rate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner>**](getContract_v1_200_response_data_initial_overrides_inner_override_tiers_inner.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


