# CustomerPlanDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | **String** |  | 
**starting_on** | **String** | The start date of the plan | 
**ending_before** | Option<**String**> | The end date of the plan | [optional]
**custom_fields** | **std::collections::HashMap<String, String>** | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | 
**customer_plan_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


