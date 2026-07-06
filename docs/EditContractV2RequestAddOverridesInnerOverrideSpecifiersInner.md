# EditContractV2RequestAddOverridesInnerOverrideSpecifiersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit_ids** | Option<**Vec<String>**> | If provided, the override will only apply to the specified commits. Can only be used for commit specific overrides. If not provided, the override will apply to all commits. | [optional]
**recurring_commit_ids** | Option<**Vec<String>**> | Can only be used for commit specific overrides. Must be used in conjunction with one of product_id, product_tags, pricing_group_values, or presentation_group_values. If provided, the override will only apply to commits created by the specified recurring commit ids. | [optional]
**any_commit_or_credit_ids** | Option<**Vec<String>**> | Can only be used for commit specific overrides. Must be used in conjunction with one of `product_id`, `product_tags`, `pricing_group_values`, or `presentation_group_values`. Must be used instead of both `commit_ids` and `recurring_commit_ids` If provided, the override will apply to any specified commit, credit, recurring commit or recurring credit IDs. | [optional]
**product_id** | Option<**uuid::Uuid**> | If provided, the override will only apply to the product with the specified ID. | [optional]
**product_tags** | Option<**Vec<String>**> | If provided, the override will only apply to products with all the specified tags. | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | A map of pricing group names to values. The override will only apply to products with the specified pricing group values. | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> | A map of group names to values. The override will only apply to line items with the specified presentation group values. Can only be used for multiplier overrides. | [optional]
**billing_frequency** | Option<**BillingFrequency**> |  (enum: MONTHLY, QUARTERLY, ANNUAL, WEEKLY, monthly, quarterly, annual, weekly) | [optional]
**exclude** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner>**](GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInnerExcludeInner.md)> | If provided, the specifier will not apply to product usage that matches the inclusion criteria and any of the excluding values. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


