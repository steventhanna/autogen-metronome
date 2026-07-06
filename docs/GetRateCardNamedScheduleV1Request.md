# GetRateCardNamedScheduleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_card_id** | **uuid::Uuid** | ID of the rate card whose named schedule is to be retrieved | 
**schedule_name** | **String** | The identifier for the schedule to be retrieved | 
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | If provided, at most one schedule segment will be returned (the one that covers this date). If not provided, all segments will be returned. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


