# ContractAmendment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **String** |  | 
**commits** | [**Vec<models::Commit>**](Commit.md) |  | 
**credits** | Option<[**Vec<models::Credit>**](Credit.md)> |  | [optional]
**overrides** | [**Vec<models::Override>**](Override.md) |  | 
**discounts** | Option<[**Vec<models::Discount>**](Discount.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::ProService>**](ProService.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | [**Vec<models::ScheduledCharge>**](ScheduledCharge.md) |  | 
**reseller_royalties** | Option<[**Vec<models::ResellerRoyaltyOrUpdate>**](ResellerRoyaltyOrUpdate.md)> | This field's availability is dependent on your client's configuration. | [optional]
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


