# GetRateScheduleV1200ResponseDataInnerCommitRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_type** | **RateType** |  (enum: FLAT, flat, PERCENTAGE, percentage, SUBSCRIPTION, subscription, TIERED, tiered, TIERED_PERCENTAGE, tiered_percentage, CUSTOM, custom) | 
**price** | Option<**f64**> | Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**tiers** | Option<[**Vec<models::ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner>**](ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerListPriceMinimumConfig**](ChargeSeatsV1200ResponseLineItemsInnerListPriceMinimumConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


