# CreditTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product** | [**models::SubscriptionRateProduct**](SubscriptionRate_product.md) |  | 
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifier>**](CommitSpecifier.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. | [optional]
**access_schedule** | Option<[**models::RelativeScheduleDuration**](RelativeScheduleDuration.md)> |  | [optional]
**rate_type** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


