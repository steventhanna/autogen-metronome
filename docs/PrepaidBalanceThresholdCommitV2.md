# PrepaidBalanceThresholdCommitV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **String** | The commit product that will be used to generate the line item for commit payment. | 
**name** | Option<**String**> | Specify the name of the line item for the threshold charge. If left blank, it will default to the commit product name. | [optional]
**description** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | The priority of the commit, used to determine drawdown order. Lower priority commits are consumed first. Defaults to 100 if not specified. | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Which products the threshold commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the threshold commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::CommitSpecifierInput>**](CommitSpecifierInput.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]
**duration** | Option<[**models::RelativeDate**](RelativeDate.md)> |  | [optional]
**rollover_fraction** | Option<**f64**> | Fraction of the created commit's unused balance that will roll over. Must be between 0 and 1. | [optional]
**rate_type** | Option<**RateType**> | Whether the created commits will be charged at commit rate or list rate. (enum: COMMIT_RATE, commit_rate, LIST_RATE, list_rate) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


