# UpdateRecurringCommitInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recurring_commit_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**access_amount** | Option<[**models::RecurringCommitOrCreditUpdateBaseAccessAmount**](RecurringCommitOrCreditUpdateBase_access_amount.md)> |  | [optional]
**invoice_amount** | Option<[**models::RecurringCommitOrCreditUpdateBaseAccessAmount**](RecurringCommitOrCreditUpdateBase_access_amount.md)> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**rate_type** | Option<**String**> | If provided, updates the recurring commit to use the specified rate type when generating future commits. | [optional]
**proration_rounding** | Option<[**models::UpdateRecurringCommitInputProrationRounding**](UpdateRecurringCommitInput_proration_rounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


