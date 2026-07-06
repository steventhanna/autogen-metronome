# GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | Option<**uuid::Uuid**> | If provided, the specifier will only apply to the product with the specified ID. | [optional]
**product_tags** | Option<**Vec<String>**> | If provided, the specifier will only apply to products with all the specified tags. | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**exclude** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner.md)> | If provided, the specifier will not apply to product usage that matches the inclusion criteria and any of the excluding values. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


