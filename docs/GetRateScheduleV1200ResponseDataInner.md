# GetRateScheduleV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**product_name** | **String** |  | 
**product_tags** | **Vec<String>** |  | 
**product_custom_fields** | **std::collections::HashMap<String, String>** | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | 
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**entitled** | **bool** |  | 
**rate** | [**models::GetRateScheduleV1200ResponseDataInnerRate**](getRateSchedule_v1_200_response_data_inner_rate.md) |  | 
**commit_rate** | Option<[**models::GetRateScheduleV1200ResponseDataInnerCommitRate**](getRateSchedule_v1_200_response_data_inner_commit_rate.md)> |  | [optional]
**billing_frequency** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


