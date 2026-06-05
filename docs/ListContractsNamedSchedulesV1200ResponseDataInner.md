# ListContractsNamedSchedulesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract this named schedule belongs to. | 
**schedule_name** | **String** | Name of the schedule. | 
**properties** | Option<**std::collections::HashMap<String, String>**> | Properties on this named schedule. | [optional]
**segments** | [**Vec<models::GetCustomerNamedScheduleV1200ResponseDataInner>**](getCustomerNamedSchedule_v1_200_response_data_inner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


