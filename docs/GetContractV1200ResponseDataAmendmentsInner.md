# GetContractV1200ResponseDataAmendmentsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](getContract_v1_200_response_data_initial_commits_inner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](getContract_v1_200_response_data_initial_credits_inner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](getContract_v1_200_response_data_initial_overrides_inner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](getContract_v1_200_response_data_initial_discounts_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](getContract_v1_200_response_data_initial_professional_services_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](getContract_v1_200_response_data_initial_scheduled_charges_inner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV1200ResponseDataAmendmentsInnerResellerRoyaltiesInner>**](getContract_v1_200_response_data_amendments_inner_reseller_royalties_inner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


