# UpdateCustomerNamedScheduleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose named schedule is to be updated | 
**schedule_name** | **String** | The identifier for the schedule to be updated | 
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**value** | Option<[**serde_json::Value**](.md)> | The value to set for the named schedule. The structure of this object is specific to the named schedule. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


