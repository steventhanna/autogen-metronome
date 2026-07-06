# GetContractNamedScheduleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose named schedule is to be retrieved | 
**contract_id** | **uuid::Uuid** | ID of the contract whose named schedule is to be retrieved | 
**schedule_name** | **String** | The identifier for the schedule to be retrieved | 
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | If provided, at most one schedule segment will be returned (the one that covers this date). If not provided, all segments will be returned. | [optional]
**properties** | Option<**std::collections::HashMap<String, String>**> | A set of key-value pairs that qualifies which schedule should be applied when looking up a schedule by name. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


