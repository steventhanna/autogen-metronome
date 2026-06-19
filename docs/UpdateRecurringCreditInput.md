# UpdateRecurringCreditInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recurring_credit_id** | **uuid::Uuid** |  | 
**access_amount** | Option<[**models::RecurringCommitOrCreditUpdateBaseAccessAmount**](RecurringCommitOrCreditUpdateBaseAccessAmount.md)> |  | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**rate_type** | Option<**RateType**> | If provided, updates the recurring credit to use the specified rate type when generating future credits. (enum: LIST_RATE, list_rate, COMMIT_RATE, commit_rate) | [optional]
**proration_rounding** | Option<[**models::UpdateRecurringCreditInputProrationRounding**](UpdateRecurringCreditInputProrationRounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


