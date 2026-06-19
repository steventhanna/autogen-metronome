# CreditTemplateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | displayed on invoices | [optional]
**product_id** | **uuid::Uuid** |  | 
**access_schedule** | [**models::RelativeScheduleDurationInput**](RelativeScheduleDurationInput.md) |  | 
**description** | Option<**String**> | Used only in UI/API. It is not exposed to end customers. | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifierInput>**](CommitSpecifierInput.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. | [optional]
**priority** | Option<**f64**> | If multiple credits are applicable, the one with the lower priority will apply first. | [optional]
**rate_type** | Option<**RateType**> |  (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


