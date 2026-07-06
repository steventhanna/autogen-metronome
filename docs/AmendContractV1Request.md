# AmendContractV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | ID of the customer whose contract is to be amended | 
**contract_id** | **uuid::Uuid** | ID of the contract to amend | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | inclusive start time for the amendment | 
**commits** | Option<[**Vec<models::CreateContractV1RequestCommitsInner>**](CreateContractV1RequestCommitsInner.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreateContractV1RequestCreditsInner>**](CreateContractV1RequestCreditsInner.md)> |  | [optional]
**overrides** | Option<[**Vec<models::CreateContractV1RequestOverridesInner>**](CreateContractV1RequestOverridesInner.md)> |  | [optional]
**discounts** | Option<[**Vec<models::CreateContractV1RequestDiscountsInner>**](CreateContractV1RequestDiscountsInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::CreateContractV1RequestProfessionalServicesInner>**](CreateContractV1RequestProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::AmendContractV1RequestResellerRoyaltiesInner>**](AmendContractV1RequestResellerRoyaltiesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::CreateContractV1RequestScheduledChargesInner>**](CreateContractV1RequestScheduledChargesInner.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


