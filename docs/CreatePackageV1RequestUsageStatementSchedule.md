# CreatePackageV1RequestUsageStatementSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frequency** | **Frequency** |  (enum: MONTHLY, monthly, QUARTERLY, quarterly, ANNUAL, annual, WEEKLY, weekly) | 
**day** | Option<**Day**> | If not provided, defaults to the first day of the month. (enum: FIRST_OF_MONTH, first_of_month, CONTRACT_START, contract_start) | [optional]
**invoice_generation_starting_at_offset** | Option<[**models::CreatePackageV1RequestDuration**](CreatePackageV1RequestDuration.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


