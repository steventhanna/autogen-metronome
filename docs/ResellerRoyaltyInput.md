# ResellerRoyaltyInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reseller_type** | [**models::ResellerType**](ResellerType.md) |  | 
**fraction** | **f64** |  | 
**netsuite_reseller_id** | **String** |  | 
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**reseller_contract_value** | Option<**f64**> |  | [optional]
**aws_options** | Option<[**models::InvoiceResellerRoyaltyAwsOptions**](InvoiceResellerRoyaltyAwsOptions.md)> |  | [optional]
**gcp_options** | Option<[**models::InvoiceResellerRoyaltyGcpOptions**](InvoiceResellerRoyaltyGcpOptions.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


