# SubscriptionQuantityHistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription_id** | Option<**uuid::Uuid**> |  | [optional]
**fiat_credit_type_id** | Option<**uuid::Uuid**> |  | [optional]
**custom_credit_type_id** | Option<**uuid::Uuid**> | The pricing unit for history prices when present. Otherwise prices use fiat_credit_type_id. | [optional]
**history** | Option<[**Vec<models::SubscriptionQuantityHistoryHistoryInner>**](SubscriptionQuantityHistoryHistoryInner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


