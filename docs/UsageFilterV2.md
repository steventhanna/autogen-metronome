# UsageFilterV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_key** | **String** |  | 
**group_values** | **Vec<String>** |  | 
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | This will match contract starting_at value if usage filter is active from the beginning of the contract. | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | This will match contract ending_before value if usage filter is active until the end of the contract. It will be undefined if the contract is open-ended. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


