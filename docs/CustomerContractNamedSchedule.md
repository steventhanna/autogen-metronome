# CustomerContractNamedSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract this named schedule belongs to. | 
**schedule_name** | **String** | Name of the schedule. | 
**properties** | Option<**std::collections::HashMap<String, String>**> | Properties on this named schedule. | [optional]
**segments** | [**Vec<models::CustomerContractNamedScheduleSegmentsInner>**](CustomerContractNamedSchedule_segments_inner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


