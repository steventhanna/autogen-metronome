# EditContractV2RequestUpdateRecurringCreditsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recurring_credit_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**access_amount** | Option<[**models::GetContractEditHistoryV2200ResponseDataInnerUpdateRecurringCommitsInnerAllOfAccessAmount**](getContractEditHistory_v2_200_response_data_inner_update_recurring_commits_inner_allOf_access_amount.md)> |  | [optional]
**ending_before** | Option<**String**> |  | [optional]
**rate_type** | Option<**String**> | If provided, updates the recurring credit to use the specified rate type when generating future credits. | [optional]
**proration_rounding** | Option<[**models::EditContractV2RequestUpdateRecurringCreditsInnerProrationRounding**](editContract_v2_request_update_recurring_credits_inner_proration_rounding.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


