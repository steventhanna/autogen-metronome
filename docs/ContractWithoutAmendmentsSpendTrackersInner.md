# ContractWithoutAmendmentsSpendTrackersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alias** | **String** | Human-readable identifier, unique per contract. | 
**credit_type_id** | **uuid::Uuid** |  | 
**reset_frequency** | **ResetFrequency** |  (enum: BILLING_PERIOD) | 
**applicable_spend_specifiers** | [**Vec<models::ContractWithoutAmendmentsSpendTrackersInnerApplicableSpendSpecifiersInner>**](ContractWithoutAmendmentsSpendTrackersInnerApplicableSpendSpecifiersInner.md) |  | 
**accumulated_spend** | Option<[**models::ContractWithoutAmendmentsSpendTrackersInnerAccumulatedSpend**](ContractWithoutAmendmentsSpendTrackersInnerAccumulatedSpend.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


