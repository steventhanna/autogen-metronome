# ChargeSeatsV1200ResponseLineItemsInnerListPrice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_type** | **String** |  | 
**price** | Option<**f64**> | Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**custom_rate** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner>**](chargeSeats_v1_200_response_line_items_inner_list_price_tiers_inner.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerListPriceMinimumConfig**](chargeSeats_v1_200_response_line_items_inner_list_price_minimum_config.md)> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | if pricing groups are used, this will contain the values used to calculate the price | [optional]
**credit_type** | Option<[**models::ChargeSeatsV1200ResponseCreditType**](chargeSeats_v1_200_response_credit_type.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


