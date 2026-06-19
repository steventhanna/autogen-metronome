# RateSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **uuid::Uuid** |  | 
**product_name** | **String** |  | 
**product_tags** | **Vec<String>** |  | 
**product_custom_fields** | **std::collections::HashMap<String, String>** | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | 
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**entitled** | **bool** |  | 
**rate** | [**models::Rate**](Rate.md) |  | 
**commit_rate** | Option<[**models::CommitRate**](CommitRate.md)> |  | [optional]
**billing_frequency** | Option<**BillingFrequency**> |  (enum: MONTHLY, QUARTERLY, ANNUAL, WEEKLY) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


