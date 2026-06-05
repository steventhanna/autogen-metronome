# BaseThresholdCommit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **String** | The commit product that will be used to generate the line item for commit payment. | 
**name** | Option<**String**> | Specify the name of the line item for the threshold charge. If left blank, it will default to the commit product name. | [optional]
**description** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> | The priority of the commit, used to determine drawdown order. Lower priority commits are consumed first. Defaults to 100 if not specified. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


