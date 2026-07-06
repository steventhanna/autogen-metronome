# GetContractV1200ResponseDataInitialOverridesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**product** | Option<[**models::GetContractV1200ResponseDataInitialCommitsInnerProduct**](GetContractV1200ResponseDataInitialCommitsInnerProduct.md)> |  | [optional]
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**override_specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideSpecifiersInner>**](GetContractV1200ResponseDataInitialOverridesInnerOverrideSpecifiersInner.md)> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**entitled** | Option<**bool**> |  | [optional]
**r#type** | Option<**Type**> |  (enum: OVERWRITE, MULTIPLIER, TIERED) | [optional]
**priority** | Option<**f64**> |  | [optional]
**multiplier** | Option<**f64**> |  | [optional]
**overwrite_rate** | Option<[**models::GetContractV1200ResponseDataInitialOverridesInnerOverwriteRate**](GetContractV1200ResponseDataInitialOverridesInnerOverwriteRate.md)> |  | [optional]
**override_tiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner>**](GetContractV1200ResponseDataInitialOverridesInnerOverrideTiersInner.md)> |  | [optional]
**is_commit_specific** | Option<**bool**> |  | [optional]
**target** | Option<**Target**> |  (enum: COMMIT_RATE, LIST_RATE) | [optional]
**rate_type** | Option<**RateType**> |  (enum: FLAT, flat, PERCENTAGE, percentage, SUBSCRIPTION, subscription, TIERED, tiered, TIERED_PERCENTAGE, tiered_percentage, CUSTOM, custom) | [optional]
**price** | Option<**f64**> | Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner>**](ChargeSeatsV1200ResponseLineItemsInnerListPriceTiersInner.md)> | Only set for TIERED rate_type. | [optional]
**value** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**credit_type** | Option<[**models::ChargeSeatsV1200ResponseCreditType**](ChargeSeatsV1200ResponseCreditType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


