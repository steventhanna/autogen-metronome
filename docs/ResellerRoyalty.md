# ResellerRoyalty

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reseller_type** | [**models::ResellerType**](ResellerType.md) |  | 
**fraction** | **f64** |  | 
**applicable_product_tags** | Option<**Vec<String>**> |  | [optional]
**applicable_product_ids** | Option<**Vec<String>**> |  | [optional]
**netsuite_reseller_id** | **String** |  | 
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**reseller_contract_value** | Option<**f64**> |  | [optional]
**aws_account_number** | Option<**String**> |  | [optional]
**aws_payer_reference_id** | Option<**String**> |  | [optional]
**aws_offer_id** | Option<**String**> |  | [optional]
**gcp_account_id** | Option<**String**> |  | [optional]
**gcp_offer_id** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


