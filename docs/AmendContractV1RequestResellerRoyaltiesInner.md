# AmendContractV1RequestResellerRoyaltiesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reseller_type** | **ResellerType** |  (enum: AWS, AWS_PRO_SERVICE, GCP, GCP_PRO_SERVICE) | 
**fraction** | Option<**f64**> |  | [optional]
**netsuite_reseller_id** | Option<**String**> |  | [optional]
**applicable_product_ids** | Option<**Vec<uuid::Uuid>**> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Must provide at least one of applicable_product_ids or applicable_product_tags. | [optional]
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Use null to indicate that the existing end timestamp should be removed. | [optional]
**reseller_contract_value** | Option<**f64**> |  | [optional]
**aws_options** | Option<[**models::ChargeSeatsV1200ResponseResellerRoyaltyAwsOptions**](ChargeSeatsV1200ResponseResellerRoyaltyAwsOptions.md)> |  | [optional]
**gcp_options** | Option<[**models::ChargeSeatsV1200ResponseResellerRoyaltyGcpOptions**](ChargeSeatsV1200ResponseResellerRoyaltyGcpOptions.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


