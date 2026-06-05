# GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfSpecifiersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | If provided, the specifier will only apply to the product with the specified ID. | [optional]
**product_tags** | Option<**Vec<String>**> | If provided, the specifier will only apply to products with all the specified tags. | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | If provided, the specifier will apply to product usage with these set of pricing group values. | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> | If provided, the specifier will apply to product usage with these set of presentation group values. | [optional]
**exclude** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner_exclude_inner.md)> | If provided, the specifier will not apply to product usage that matches the inclusion criteria and any of the excluding values. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


