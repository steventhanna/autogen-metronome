# UpdateRecurringCreditInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recurring_credit_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**access_amount** | Option<[**models::RecurringCommitOrCreditUpdateBaseAccessAmount**](RecurringCommitOrCreditUpdateBase_access_amount.md)> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**rate_type** | Option<**String**> | If provided, updates the recurring credit to use the specified rate type when generating future credits. | [optional]
**proration_rounding** | Option<[**models::UpdateRecurringCreditInputProrationRounding**](UpdateRecurringCreditInput_proration_rounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


