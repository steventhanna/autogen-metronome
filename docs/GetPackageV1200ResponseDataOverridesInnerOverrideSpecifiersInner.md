# GetPackageV1200ResponseDataOverridesInnerOverrideSpecifiersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**product_tags** | Option<**Vec<String>**> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**commit_template_ids** | Option<**Vec<String>**> |  | [optional]
**recurring_commit_template_ids** | Option<**Vec<String>**> |  | [optional]
**billing_frequency** | Option<**String**> |  | [optional]
**exclude** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner_exclude_inner.md)> | If provided, the specifier will not apply to product usage that matches the inclusion criteria and any of the excluding values. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


