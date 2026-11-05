# CreditTypeConversionSegment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | End of the segment (exclusive). Omitted if the segment has no end. | [optional]
**fiat_per_custom_credit** | Option<**f64**> | The amount of fiat currency per one custom pricing unit over the segment. Null means there is no override, so the rate card's conversion applies. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


