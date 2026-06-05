# GetContractEditHistoryV2200ResponseDataInnerUpdatePrepaidBalanceThresholdConfigurationCommit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | Option<**String**> | The commit product that will be used to generate the line item for commit payment. | [optional]
**name** | Option<**String**> | Specify the name of the line item for the threshold charge. If left blank, it will default to the commit product name. | [optional]
**description** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | The priority of the commit, used to determine drawdown order. Lower priority commits are consumed first. Defaults to 100 if not specified. On updates, set to null to clear a previously configured priority. | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the threshold commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the threshold commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfSpecifiersInner>**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration_commit_allOf_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. Instead, to target usage by product or product tag, pass those values in the body of `specifiers`. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


