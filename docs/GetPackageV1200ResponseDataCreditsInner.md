# GetPackageV1200ResponseDataCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product** | [**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md) |  | 
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCommitsInnerSpecifiersInner>**](getContract_v1_200_response_data_initial_commits_inner_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**access_schedule** | Option<[**models::GetPackageV1200ResponseDataCreditsInnerAccessSchedule**](getPackage_v1_200_response_data_credits_inner_access_schedule.md)> |  | [optional]
**rate_type** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


