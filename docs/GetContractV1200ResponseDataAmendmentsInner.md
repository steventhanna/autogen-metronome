# GetContractV1200ResponseDataAmendmentsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**commits** | [**Vec<models::GetContractV1200ResponseDataInitialCommitsInner>**](GetContractV1200ResponseDataInitialCommitsInner.md) |  | 
**credits** | Option<[**Vec<models::GetContractV1200ResponseDataInitialCreditsInner>**](GetContractV1200ResponseDataInitialCreditsInner.md)> |  | [optional]
**overrides** | [**Vec<models::GetContractV1200ResponseDataInitialOverridesInner>**](GetContractV1200ResponseDataInitialOverridesInner.md) |  | 
**discounts** | Option<[**Vec<models::GetContractV1200ResponseDataInitialDiscountsInner>**](GetContractV1200ResponseDataInitialDiscountsInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::GetContractV1200ResponseDataInitialProfessionalServicesInner>**](GetContractV1200ResponseDataInitialProfessionalServicesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::GetContractV1200ResponseDataInitialScheduledChargesInner>**](GetContractV1200ResponseDataInitialScheduledChargesInner.md) |  | 
**reseller_royalties** | Option<[**Vec<models::GetContractV1200ResponseDataAmendmentsInnerResellerRoyaltiesInner>**](GetContractV1200ResponseDataAmendmentsInnerResellerRoyaltiesInner.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


