# CreditTypeConversionOverrideInputV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_credit_type_id** | **uuid::Uuid** | The custom pricing unit to override. It must have a conversion on the contract's rate card. | 
**fiat_per_custom_credit** | Option<**f64**> | The amount of fiat currency per one custom pricing unit over the interval. Must not be negative. Pass null to clear the override for the interval, so that the rate card's conversion applies. | 
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | Start of the interval (inclusive). Must be on the hour, or equal to the contract's start. | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | End of the interval (exclusive). Must be on the hour. If omitted, the override has no end. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


