# GetRateSchedulePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_card_id** | **uuid::Uuid** | ID of the rate card to get the schedule for | 
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | inclusive starting point for the rates schedule | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | optional exclusive end date for the rates schedule. When not specified rates will show all future schedule segments. | [optional]
**selectors** | Option<[**Vec<models::RateSelector>**](RateSelector.md)> | List of rate selectors, rates matching ANY of the selector will be included in the response Passing no selectors will result in all rates being returned. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


