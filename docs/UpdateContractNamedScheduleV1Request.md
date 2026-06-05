# UpdateContractNamedScheduleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose named schedule is to be updated | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract whose named schedule is to be updated | 
**schedule_name** | **String** | The identifier for the schedule to be updated | 
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**value** | Option<[**serde_json::Value**](.md)> | The value to set for the named schedule. The structure of this object is specific to the named schedule. | 
**properties** | Option<**std::collections::HashMap<String, String>**> | A set of key-value pairs that qualifies which schedule should be applied when looking up a schedule by name. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


