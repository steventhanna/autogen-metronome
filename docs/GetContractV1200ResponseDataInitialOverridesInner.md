# GetContractV1200ResponseDataInitialOverridesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**created_at** | **String** |  | 
**product** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](getContract_v1_200_response_data_initial_commits_inner_product.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideSpecifiersInner>**](getContract_v1_200_response_data_initial_overrides_inner_override_specifiers_inner.md)> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**String**> |  | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::GetContractV1200ResponseDataInitialOverridesInnerOverwriteRate**](getContract_v1_200_response_data_initial_overrides_inner_overwrite_rate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner>**](getContract_v1_200_response_data_initial_overrides_inner_override_tiers_inner.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**String**> |  | [optional]
**rate_type** | Option<**String**> |  | [optional]
**price** | Option<**f64**> | Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner>**](chargeSeats_v1_200_response_line_items_inner_list_price_tiers_inner.md)> | Only set for TIERED rate_type. | [optional]
**value** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**credit_type** | Option<[**models::ChargeSeatsV1200ResponseCreditType**](chargeSeats_v1_200_response_credit_type.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


