# AddRateV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_card_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the rate card to update | 
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the product to add a rate for | 
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | Optional. List of pricing group key value pairs which will be used to calculate the price. | [optional]
**billing_frequency** | Option<**String**> | Optional. Frequency to bill subscriptions with. Required for subscription type products with Flat rate. | [optional]
**starting_at** | **String** | inclusive effective date | 
**ending_before** | Option<**String**> | exclusive end date | [optional]
**entitled** | **bool** |  | 
**rate_type** | **String** |  | 
**price** | Option<**f64**> | Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The Metronome ID of the credit type to associate with price, defaults to USD (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE rates use the credit type of associated rates. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner>**](chargeSeats_v1_200_response_line_items_inner_list_price_tiers_inner.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerListPriceMinimumConfig**](chargeSeats_v1_200_response_line_items_inner_list_price_minimum_config.md)> |  | [optional]
**custom_rate** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**commit_rate** | Option<[**models::GetRateScheduleV1200ResponseDataInnerCommitRate**](getRateSchedule_v1_200_response_data_inner_commit_rate.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


