# ResellerRoyaltyOrUpdateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reseller_type** | [**models::ResellerType**](ResellerType.md) |  | 
**fraction** | Option<**f64**> |  | [optional]
**netsuite_reseller_id** | Option<**String**> |  | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**starting_at** | Option<**String**> |  | [optional]
**ending_before** | Option<**String**> | Use null to indicate that the existing end timestamp should be removed. | [optional]
**reseller_contract_value** | Option<**f64**> |  | [optional]
**aws_options** | Option<[**models::InvoiceResellerRoyaltyAwsOptions**](Invoice_reseller_royalty_aws_options.md)> |  | [optional]
**gcp_options** | Option<[**models::InvoiceResellerRoyaltyGcpOptions**](Invoice_reseller_royalty_gcp_options.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


