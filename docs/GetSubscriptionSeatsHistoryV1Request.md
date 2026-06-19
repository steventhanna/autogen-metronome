# GetSubscriptionSeatsHistoryV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**contract_id** | **uuid::Uuid** |  | 
**subscription_id** | **uuid::Uuid** |  | 
**limit** | Option<**i32**> | Maximum number of seat schedule entries to return. Defaults to 10. Required range: 1 <= x <= 10. | [optional][default to 10]
**cursor** | Option<**String**> | Cursor for pagination. Use the value from the `next_page` field of the previous response to retrieve the next page of results. | [optional]
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Get the seats history segment for the covering date. Cannot be used with `starting_at` or `ending_before`. | [optional]
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Include seats history segments that are active at or after this timestamp. Use with `ending_before` to get a specific time range. If not set, there's no lower bound. | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Include seats history segments that are active at or before this timestamp. Use with `starting_at` to get a specific time range. If not set, there's no upper bound. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


