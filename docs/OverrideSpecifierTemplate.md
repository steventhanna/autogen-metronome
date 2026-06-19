# OverrideSpecifierTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | Option<**uuid::Uuid**> |  | [optional]
**product_tags** | Option<**Vec<String>**> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**commit_template_ids** | Option<**Vec<String>**> |  | [optional]
**recurring_commit_template_ids** | Option<**Vec<String>**> |  | [optional]
**any_commit_or_credit_template_ids** | Option<**Vec<String>**> |  | [optional]
**billing_frequency** | Option<**BillingFrequency**> |  (enum: MONTHLY, QUARTERLY, ANNUAL, WEEKLY) | [optional]
**exclude** | Option<[**Vec<models::ExcludeSpecifier>**](ExcludeSpecifier.md)> | If provided, the specifier will not apply to product usage that matches the inclusion criteria and any of the excluding values. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


