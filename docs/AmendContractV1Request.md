# AmendContractV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose contract is to be amended | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract to amend | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **String** | inclusive start time for the amendment | 
**commits** | Option<[**Vec<models::CreateContractV1RequestCommitsInner>**](createContract_v1_request_commits_inner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreateContractV1RequestCreditsInner>**](createContract_v1_request_credits_inner.md)> |  | [optional]
**overrides** | Option<[**Vec<models::CreateContractV1RequestOverridesInner>**](createContract_v1_request_overrides_inner.md)> |  | [optional]
**discounts** | Option<[**Vec<models::CreateContractV1RequestDiscountsInner>**](createContract_v1_request_discounts_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](createContract_v1_request_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::AmendContractV1RequestResellerRoyaltiesInner>**](amendContract_v1_request_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::CreateContractV1RequestScheduledChargesInner>**](createContract_v1_request_scheduled_charges_inner.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


