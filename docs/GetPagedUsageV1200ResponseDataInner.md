# GetPagedUsageV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_on** | **String** |  | 
**ending_before** | **String** |  | 
**group_key** | Option<**String**> | Use `group` instead. The group key for single-key grouping. | 
**group_value** | Option<**String**> | Use `group` instead. The group value for single-key grouping. | 
**group** | Option<**std::collections::HashMap<String, String>**> | Map of group key to their value for this usage aggregate. For simple group keys, this should be a single key e.g. `{\"region\": \"US-East\"}` For compound group keys, this should contain the values of each group key that forms the compound e.g. `{\"region\": \"US-East\", \"team\": \"engineering\"}`  | [optional]
**value** | Option<**f64**> |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


